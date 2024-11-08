import 'package:flutter_test/flutter_test.dart';
import 'package:eco_app/main.dart';

void main() {
  // Test 1: Verify that WelcomePage is displayed
  testWidgets('WelcomePage is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Check if Welcome text is displayed
    expect(find.text('Just Do It'), findsOneWidget);
  });

}