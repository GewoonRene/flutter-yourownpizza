
/// ....
/// THIS IS STAGING DATA
/// ....

/// Struct
class DrinkTileRow {
  String title;
  List<DrinkTileRow> children;
  DrinkTileRow(this.title, [this.children = const <DrinkTileRow>[]]);
}

/// Drink tile structure
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