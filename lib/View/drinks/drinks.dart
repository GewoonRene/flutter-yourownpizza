
import 'package:flutter/material.dart';
import 'package:yourownpizza/View/drinks/helpers/DrinkManager.dart';
import 'package:yourownpizza/View/drinks/widgets/DrinkTile.dart';
import '../helpers/constants.dart';

class Drinks extends StatelessWidget {

  Drinks() {
    DrinkManager manager = new DrinkManager();
    manager.add(DrinksList.Wine, 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.black
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80.0,),
            SizedBox(height: 100,),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: new EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(roundedCorners), topRight: Radius.circular(roundedCorners),),
                ),
                child: new ListView.builder(
                  itemBuilder: (BuildContext ctx, int index) {
                    return new DrinksInTiles(DrinkTileStructure[index]);
                  },
                  itemCount: DrinkTileStructure.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
