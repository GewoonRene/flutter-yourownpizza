import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yourownpizza/View/Shared/Bottombar.dart';

class Starters extends StatelessWidget {
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
                            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                            child: Text(
                              'Voorgerechten',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Divider(
                          ),
                          SizedBox(
                            height: 450,
                            child: GridView (
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            children: <Widget>[
                                StartersList(
                                  type: 'Carpaccio',
                                ),
                                StartersList(),
                                StartersList(),
                                StartersList(),
                                StartersList(),
                                StartersList(),
                              ],
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

class StartersList extends StatelessWidget {
  final String type;
  StartersList({this.type});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Text(
        '$type'
      ),
    );
  }
}
