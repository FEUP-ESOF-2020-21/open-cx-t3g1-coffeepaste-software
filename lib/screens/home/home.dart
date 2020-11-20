import 'package:flutter/material.dart';
import 'package:flutter_app/screens/jitsii/session.dart';
import 'package:flutter_app/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('Clip Meet'),
        backgroundColor: Colors.green[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () async{
              await _auth.signOut();
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        SizedBox(height: 40.0),
        Container(
          height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.greenAccent,
                color: Colors.green,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateSession()));
    },
                  child: Center(
                    child: Text(
                      'Create Session',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                )
            )
        )
        ]),
    );
  }
}
