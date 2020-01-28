import 'package:flutter/material.dart';
import 'package:yourownpizza/View/Shared/Bottombar.dart';
import 'package:yourownpizza/View/drinks/helpers/DrinksData.dart';
import 'package:yourownpizza/View/drinks/widgets/DrinkTile.dart';

class Drinks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.orange[900], Colors.orange[800], Colors.black],
          ),
        ),

        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0),),
          ),

          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: GenerateListMap(drinkTileStructure[1]),
                ),
              ),
              Container(
                child: BottomBar(),
              )
            ],
          ),

        ),
      ),
    );
  }

}
