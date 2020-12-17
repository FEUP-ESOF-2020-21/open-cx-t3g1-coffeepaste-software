
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/jitsii/session.dart';
import 'package:flutter_test/flutter_test.dart';

void main (){
  Widget makeTestableWidget({Widget child}){
    return MaterialApp(
      //auth:auth,
      home:child,
    );
  }

  testWidgets('tests if theme and description have accordingly correct length and lines', (WidgetTester tester) async{
    CreateSession page = CreateSession();
    await tester.pumpWidget(makeTestableWidget(child: page));
    TextField formfield = await tester.widget<TextField>(find.byKey(Key('Description')));

    expect(formfield.maxLines, 5);

    TextField formfield2 = await tester.widget<TextField>(find.byKey(Key('Theme')));
    expect(formfield2.maxLength,25);
  });
}