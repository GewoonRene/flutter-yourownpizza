import 'package:flutter/material.dart';
import 'package:yourownpizza/View/Shared/Bottombar.dart';
import 'package:yourownpizza/View/drinks/drinks.dart';
import 'package:yourownpizza/View/drinks/widgets/DrinkTile.dart';
import 'package:yourownpizza/View/helpers/Buttons.dart';
import 'package:yourownpizza/View/helpers/constants.dart';
import 'package:yourownpizza/View/ingredients/helpers/IngredientsData.dart';

class Ingredients extends StatelessWidget {

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
              Container(
                margin: EdgeInsets.only(top: 20, left: 50, right: 50),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          BackButton(
                            color: mainColor,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 10.0),
                            child: Text(
                              'Ingredienten',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Buttons("Dranken", Drinks()),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 50, left: 100, right: 100),
                  child: SingleChildScrollView(
                    child: GenerateListMap(ingredientsTileStructure, true),
                  ),
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
