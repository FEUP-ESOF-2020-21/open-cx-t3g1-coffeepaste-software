import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'videoConference.dart';
import 'session.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        backgroundColor: Colors.redAccent[100],
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent[100],
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Text('Create Session'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateSession()),
            );
          },
        ),
      ),
    );
  }
}

class CreateSession extends StatefulWidget{
  @override
  _CreateSessionState createState() => _CreateSessionState();
}

class _CreateSessionState extends State<CreateSession> {
  Session session = new Session(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Session'),
        backgroundColor: Colors.redAccent[100],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0
            ),
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                onChanged: (String v){
                  session.setType(v);
                } ,
                decoration: InputDecoration(
                  labelText: 'Theme of the session'
                ),),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                onChanged: (String v){
                  session.setDescription(v);
                } ,
                decoration: InputDecoration(
                  labelText: 'Description of the session'
                ),),
              )
            ],
          ),
        ), 
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VideoConference(roomType: session.getType(), roomID: session.getId(), roomDescription: session.getDescription(),)),
            );
          },
        label: Text('Create'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.redAccent[100]
        ),
      );
  }
}