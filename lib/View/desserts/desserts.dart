import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yourownpizza/View/Shared/Bottombar.dart';
import 'package:yourownpizza/View/drinks/drinks.dart';
import 'package:yourownpizza/View/helpers/Buttons.dart';
import 'package:yourownpizza/View/helpers/constants.dart';

class Desserts extends StatelessWidget {
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
              Colors.orange[400]
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 200,),
            Expanded(
              child: Container(
                width: 5000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0),),
                ),
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                    'Nagerechten',
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
                          Divider(
                          ),
                          Center(
                            child: Container(
                              width: 500,
                              alignment: Alignment.center,
                              child: GridView.count(
                                shrinkWrap: true,
                                primary: true,
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 1.4,
                                children: <Widget>[
                                  DessertsList(
                                    type: 'Creme brulee',
                                  ),
                                  DessertsList(
                                    type: 'Tart ta tin',
                                  ),
                                  DessertsList(
                                    type: 'Dam blanche',
                                  ),
                                  DessertsList(
                                    type: 'Freakshake',
                                  ),
                                  DessertsList(
                                    type: 'Kaasplankje',
                                  ),
                                  DessertsList(
                                    type: 'Tiramisu',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: BottomBar(),
            )
          ],
        ),
      ),
    );
  }
}

class DessertsList extends StatelessWidget {
  final String type;
  DessertsList({this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridTile(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            decoration: pizzaBottomStyle,
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    '$type',
                  ),
                ),
                Container(
                  decoration: bottomSheet,
                  height: 81.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        child: Text(
                          '-',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: mainColor,
                        shape: buttonStyle,
                      ),
                      Text (
                        '0',
                        style: TextStyle(color: Colors.white),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: mainColor,
                        shape: buttonStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
