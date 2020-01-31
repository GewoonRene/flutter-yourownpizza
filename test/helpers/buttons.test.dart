
import 'package:flutter_test/flutter_test.dart';
import 'package:yourownpizza/View/helpers/Buttons.dart';

void main() {

  testWidgets("Button returns a empty widget", (WidgetTester tester) async {

    /// Builds the widget
    await tester.pumpWidget(Buttons("Test"));

    /// Test if there is no title predefined.
    expect(find.text("title"), findsNothing);

  });

}