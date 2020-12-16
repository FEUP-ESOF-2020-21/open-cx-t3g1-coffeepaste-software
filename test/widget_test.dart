// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/screens/authenticate/login.dart';

void main() {
  testWidgets('Log in', (WidgetTester tester) async {
    // Find all Widgets Needed
    final emailField = find.byKey(ValueKey("loginEmailField"));
    final passwordField = find.byKey(ValueKey("loginPasswordField"));
    final loginButton = find.byKey(ValueKey("loginButton"));
    
    // Execute the test.
    await tester.pumpWidget(MaterialApp(home: MyHomePage()));
    await tester.enterText(emailField, "teste3@gmail.com");
    await tester.enterText(passwordField, "12345678");
    await tester.tap(loginButton);
    await tester.pump();

    // Check the outputs
    expect(find.byKey(ValueKey("loginEmailField")), findsOneWidget);
  });
}
