
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourownpizza/View/drinks/helpers/DrinksData.dart';

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

  final DrinkTileRow drinkTileRow;
  GenerateListMap(this.drinkTileRow);

  @override
  Widget build(BuildContext context) {
    return _generateListMap(drinkTileRow);
  }

  Widget _generateListMap(DrinkTileRow row) {

    // Using 'new Text' instead of 'new ListTile' will break the margin of the list.
    // Also 'new ExpansionTile' won't work because some tile's do not have any content.
    if (row.children.isEmpty) return new ListTile(title: new Text(row.title));

    return new ExpansionTile(
      title: new Text(row.title),
      // @ToDo: Fix weird error (bool is not type double).
      // key: new PageStorageKey<DrinkTileRow>(row),

      children: <Widget>[
        _createGrid(drinkTileRow)
      ],

    );
  }

  Widget _createGrid(DrinkTileRow dtr) {
    return Container(
      child: GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: List.generate(dtr.children.length, (index) {
          return _createTiles(dtr.children[index].title);
        }),
      ),
    );
  }

  Widget _createTiles(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all()
      ),
      child: Text(title),
    );
  }

}
