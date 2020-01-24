import 'package:flutter/material.dart';
import 'package:yourownpizza/View/drinks/helpers/DrinkManager.dart';
import 'package:yourownpizza/View/drinks/widgets/DrinkTile.dart';
import 'package:yourownpizza/View/helpers/constants.dart';
import '../Shared/Bottombar.dart';

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
            colors: [Colors.orange[900], Colors.orange[800], Colors.black],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: new EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15.0),
                            child: RaisedButton(
                              color: mainColor,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Drinks()));
                              },
                              textColor: Colors.white,
                              child:
                                  Text('Back', style: TextStyle(fontSize: 20)),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 10.0),
                                child: Text(
                                  'Drinks',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: new ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemBuilder: (BuildContext ctx, int index) {
                                    return new DrinksInTiles(
                                        drinkTileStructure[index]);
                                  },
                                  itemCount: drinkTileStructure.length,
                                ),
                              )
                            ],
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
            ),
          ],
        ),
      ),
    );
  }
}
