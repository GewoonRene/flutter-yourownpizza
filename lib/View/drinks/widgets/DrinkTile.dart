
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenerateListMap extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _generateListMap();
  }

  Widget _generateListMap() {
    return new ExpansionTile(
      title: new Text('Test'),
      // key: new PageStorageKey(1),

      children: <Widget>[
        _createGrid()
      ],

    );
  }

  Widget _createGrid() {
    return Container(
      child: GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        children: List.generate(6, (index) {
          return _createTiles("Alowa");
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
