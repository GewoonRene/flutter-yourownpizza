
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Struct
//class DrinkTile {
//  String title;
//  List<DrinkTileRow> children;
//  DrinkTile(this.title, [this.children = const <DrinkTileRow>[]]);
//}

// Struct
class DrinkTileRow {
  String title;
  List<DrinkTileRow> children;
  DrinkTileRow(this.title, [this.children = const <DrinkTileRow>[]]);
}

// Drink tile structure
List<DrinkTileRow> drinkTileStructure = <DrinkTileRow>[
  new DrinkTileRow(
    'Fris dranken',
    <DrinkTileRow>[
      new DrinkTileRow('Cola'),
      new DrinkTileRow('Sinas'),
      new DrinkTileRow('Sprite')
    ],
  ),
  new DrinkTileRow(
    'Koffie & Thee',
    <DrinkTileRow>[
      new DrinkTileRow('Irish Koffie'),
      new DrinkTileRow('Espresso'),
      new DrinkTileRow('Koffie Verkeerd')
    ],
  ),
  new DrinkTileRow(
    'Wijnen',
    <DrinkTileRow>[
      new DrinkTileRow('Witte Wijn'),
      new DrinkTileRow('Droge Witte Wijn'),
      new DrinkTileRow('Nog Drogere Wittere Wijn')
    ],
  ),
  new DrinkTileRow(
    'Bieren & Dranken',
    <DrinkTileRow>[
      new DrinkTileRow('Bier'),
      new DrinkTileRow('0.0'),
      new DrinkTileRow('Rum')
    ],
  ),
];

class DrinksInTiles extends StatelessWidget {
  final DrinkTileRow drinksTileRow;
  DrinksInTiles(this.drinksTileRow);

  @override
  Widget build(BuildContext context) {
    return _buildTiles(drinksTileRow);
  }

  Widget _buildTiles(DrinkTileRow row) {

    // Using 'new Text' instead of 'new ListTile' will break the margin of the list.
    // Also 'new ExpansionTile' won't work because some tile's do not have any content.
    if(row.children.isEmpty) return new ListTile(title: new Text(row.title));

    return new ExpansionTile(
      key: new PageStorageKey<DrinkTileRow>(row),
      title: new Text(row.title),

      // @ToDo Fix if multiple rows is needed.
      children: row.children.map(_buildTiles).toList()

    );

  }

}

