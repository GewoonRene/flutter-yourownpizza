
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourownpizza/View/drinks/helpers/DrinksData.dart';
import 'package:yourownpizza/View/helpers/constants.dart';

/// ....
///  @USAGE:
///   [GenerateListMap] - Create's a grid within a list widget.
///   needs an [drinkTileRow] structure as parameter.
///
///  @EXAMPLE
///  Container(
///     padding,margin...
///     child: GenerateListMap(Data_Structure_Here);
///  ),
///
///  @EXAMPLE Data Structure
///  new DrinkTileRow(
//    'title_name_here',
//    <DrinkTileRow>[
//      new DrinkTileRow('title_here'),
//      new DrinkTileRow('title_here'),
//      new DrinkTileRow('title_here')
//    ],
//  )
/// ....

class GenerateListMap extends StatelessWidget {

  /// The data structure with data.
  final List<DrinkTileRow> drinkTileRow;
  /// [isIngredient] is instance in Ingredient.
  bool isIngredient;

  GenerateListMap(this.drinkTileRow, [this.isIngredient = false]);

  @override
  Widget build(BuildContext context) {
    List<Widget> listMap= [];

    // @ToDo: Fix workaround.
    for (int i = 0; i < drinkTileRow.length; i++) {
      listMap.add( _generateListMap(drinkTileRow[i]) );
    }

    return Column(
      children: listMap,
    );
  }

  /// [DrinkTileRow] dtr - The children of the main row.
  Widget _generateListMap(DrinkTileRow row) {

    // Using 'new Text' instead of 'new ListTile' will break the margin of the list.
    // Also 'new ExpansionTile' won't work because some tile's do not have any content.
    if (row.children.isEmpty) return new ListTile(title: new Text(row.title));

    return new ExpansionTile(
      title: new Text(row.title),
      // @ToDo: Fix weird error (bool is not type double).
      // key: new PageStorageKey<DrinkTileRow>(row),

      children: <Widget>[
        _createGrid(row)
      ],

    );
  }

  /// [DrinkTileRow] dtr - The children of the main row.
  Widget _createGrid(DrinkTileRow dtr) {
    return Container(
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: List.generate(dtr.children.length, (index) {
          return _createTiles(dtr.children[index].title);
        }),
      ),
    );
  }

  /// [String] title - The title of the data.
  Widget _createTiles(String title) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all()
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(isIngredient ? Icons.fastfood : Icons.local_drink, size: 80),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.cancel),
                color: mainColor,
                onPressed: null
              ),
              Text(title, style: TextStyle(fontSize: 14)),
              IconButton(
                icon: Icon(Icons.add_circle),
                color: mainColor,
                onPressed: null
              ),
            ],
          ),
        ],
      )
    );
  }

}
