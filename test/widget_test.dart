<<<<<<< HEAD
// widget_test.dart - Placeholder
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Test placeholder - uncomment saat mau bikin test
  testWidgets('Placeholder test', (WidgetTester tester) async {
    // TODO: Add widget tests
=======
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layout_tugas/main.dart';

void main() {
  testWidgets('Contact list displays correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ContactApp());

    // Verify that our contact list page displays
    expect(find.text('Daftar Kontak'), findsOneWidget);
    
    // Verify that contacts are displayed
    expect(find.text('Rama'), findsOneWidget);
    expect(find.text('Ayu'), findsOneWidget);
    expect(find.text('Doni'), findsOneWidget);

    // Verify phone numbers are displayed
    expect(find.text('08123456789'), findsOneWidget);
    
    // Verify call button exists
    expect(find.byIcon(Icons.call), findsWidgets);
  });

  testWidgets('Theme toggle button exists', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(ContactApp());

    // Verify theme toggle button exists
    expect(find.byIcon(Icons.brightness_6), findsOneWidget);
>>>>>>> f43b401e9dac48839625ee2884d2e99d984bf38d
  });
}