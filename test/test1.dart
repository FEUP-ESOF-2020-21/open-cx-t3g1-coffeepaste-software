
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/authenticate/authenticate.dart';
import 'package:flutter_app/screens/authenticate/login.dart';
import 'package:flutter_app/screens/authenticate/register.dart';
import 'package:flutter_app/screens/wrapper.dart';
import 'package:flutter_test/flutter_test.dart';



void main (){
  Widget makeTestableWidget({Widget child}){
    return MaterialApp(
      //auth:auth,
      home:child,
    );
  }

  testWidgets('email or password is empty, thrft doesnt sign in', (WidgetTester tester) async{
    MyHomePage page = MyHomePage();
    await tester.pumpWidget(makeTestableWidget(child: page));
    await tester.tap(find.byKey(Key('signIn')));

  });
}