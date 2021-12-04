// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:app/screens/root/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Home page is created', (widgetTester) async {

      const testWidget = MaterialApp(
        home: HomePage(),
      );

      await widgetTester.pumpWidget(testWidget);
      await widgetTester.pumpAndSettle();

      // Text must exist
      expect(
        find.text('Hello, friend.'),
        findsOneWidget,
      );
    }
  );

  testWidgets(
    'HomePage has button', (widgetTester) async {

      const testWidget = MaterialApp(
        home: HomePage(),
      );

      await widgetTester.pumpWidget(testWidget);
      await widgetTester.pumpAndSettle();

      final buttonMaterial = find.descendant(
        of: find.byType(MaterialButton),
        matching: find.byType(Material),
      );

      final materialButton = widgetTester.widget<Material>(buttonMaterial);
      
      // Button must have
      
      // - blue colour
      expect(
        materialButton.color, 
        Colors.blue
      );

      // - text of 'Weather today'
      expect(
        find.text('Weather today'), 
        findsOneWidget
      );

      // - weather icon
      expect(
        find.byKey(const Key('icon_weather')), 
        findsOneWidget
      );
    }
  );
}
