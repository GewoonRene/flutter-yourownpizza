
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Struct
class DrinkTile {
  String title;
  DrinkTile(this.title);
}

// Struct
class DrinkTileRow {
  String title;
  List<DrinkTile> children;
  DrinkTileRow(this.title, [this.children = const <DrinkTile>[]]);
}

// Drink tile structure
List<DrinkTileRow> DrinkTileStructure = <DrinkTileRow>[
  new DrinkTileRow(
    'FrisDranken',
    <DrinkTile>[
      new DrinkTile('Cola'),
      new DrinkTile('Sinas'),
      new DrinkTile('Sprite')
    ],
  ),
  new DrinkTileRow(
    'FrisDranken',
    <DrinkTile>[
      new DrinkTile('Irish Koffie'),
      new DrinkTile('Espresso'),
      new DrinkTile('Koffie Verkeerd')
    ],
  ),
  new DrinkTileRow(
    'Wijnen',
    <DrinkTile>[
      new DrinkTile('Witte Wijn'),
      new DrinkTile('Droge Witte Wijn'),
      new DrinkTile('Nog Drogere Wittere Wijn')
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
      // children: row.children.map(_buildTiles).toList()

    );

  }

}