
import 'package:flutter_test/flutter_test.dart';
import 'package:yourownpizza/View/drinks/helpers/DrinksData.dart';
import 'package:yourownpizza/View/drinks/widgets/DrinkTile.dart';

void main() {

  testWidgets("Widget is able to build correctly", (WidgetTester tester) async {

    /// Test the widget by creating it.
    await tester.pumpWidget(GenerateListMap(drinkTileStructure));

    /// Searches for the title and return button
    final expectedTitle = find.text('Drinks');
    final expectedReturn = find.text('Back');

    /// Expected results
    expect(expectedTitle, findsOneWidget);
    expect(expectedReturn, findsOneWidget);

  });


}