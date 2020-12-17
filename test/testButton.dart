


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';


class MockNavigatorObserver extends Mock implements NavigatorObserver{}

void main() {

  testWidgets('Button is present and triggers navigation after tapped',
          (WidgetTester tester) async {
            final mockObserver= MockNavigatorObserver();

        await tester.pumpWidget(
            MaterialApp(home: Home(),
                        navigatorObservers: [mockObserver],));
        expect(find.byKey(Key('editProfile')), findsOneWidget);
        await tester.tap(find.byKey(Key('editProfile')));
        await tester.pumpAndSettle();


        verify(mockObserver.didPush(typed(any), typed(any)));

        //expect(find.byType(editProfile), findsOneWidget);
        //how to test navigator?    
      });
}
