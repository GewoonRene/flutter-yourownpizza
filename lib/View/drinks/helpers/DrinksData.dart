
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
      new DrinkTileRow('Thee')
    ],
  ),
  new DrinkTileRow(
    'Wijnen',
    <DrinkTileRow>[
      new DrinkTileRow('Witte Wijn'),
      new DrinkTileRow('Rode Wijn'),
      new DrinkTileRow('Hugo')
    ],
  ),
  new DrinkTileRow(
    'Bieren & Dranken',
    <DrinkTileRow>[
      new DrinkTileRow('Amstel'),
      new DrinkTileRow('Amstel 0.0'),
      new DrinkTileRow('Jupiler')
    ],
  ),
];