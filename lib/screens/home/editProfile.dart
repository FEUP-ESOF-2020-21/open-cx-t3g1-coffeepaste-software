import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/user.dart';
import 'package:flutter/src/rendering/box.dart';

class editProfile extends StatelessWidget {
  final User user;
  bool showPass = false;

  editProfile({this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 16,right: 16, top: 48),
        child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(child: Icon(Icons.arrow_back, color: Colors.green[400]),
                      onTap: (){
                    Navigator.pop(context);
                  }

                  ),
                  Text('Clip Meet', style: TextStyle(fontSize:24,color: Colors.green[400]),),
                  Text('', style: TextStyle(fontSize:24,color: Colors.green[400]),),

                ],
              ),


              SizedBox(height: 50.0),
              Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                        boxShadow:[BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.grey[200],
                            offset: Offset(0,6)
                        )]
                        ,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.pexels.com/photo/woman-in-black-long-sleeve-shirt-and-brown-pants-sitting-on-brown-wooden-chair-4937226/")

                        )
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                        shape: BoxShape.circle,
                        color: Colors.green[400]
                      ),
                      child: Icon(Icons.edit, color: Colors.white,),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25.0),
              GestureDetector(
                onTap: (){
                  FocusScope.of(context).unfocus();
                },
                child: Column(

                  children: [
                    /*TextFormField(
                      decoration: InputDecoration(hintText: user.uid),
                    ),*/

                    SizedBox(height: 40.0),

                    buildTextfield("Username", user.uid, false),
                    SizedBox(height: 25.0),

                    buildTextfield("Email", "isla@isla.com", false),

                    SizedBox(height: 25.0),

                    buildTextfield("Password", "shit", true),
                  ],
                ),
              ),
              SizedBox(height: 40.0),

              Row(
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
                    onPressed: (){},
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2.2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 70),
                  RaisedButton(
                    color: Colors.green[400],
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
                    onPressed: (){},
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 2.2,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )



            ]),

      ),
    );
  }

  TextField buildTextfield(String labelText, String hint, bool isPass){
    return  TextField(
      obscureText: isPass,
      decoration: InputDecoration(
        suffixIcon: isPass? IconButton(
          onPressed: (){
            showPass = !showPass;
          },
          icon: Icon(
            Icons.remove_red_eye,
            color: Colors.grey,
          )
        ): null,
          contentPadding: EdgeInsets.only(bottom: 2),
          hintText: hint,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
      ),
    );
  }
}