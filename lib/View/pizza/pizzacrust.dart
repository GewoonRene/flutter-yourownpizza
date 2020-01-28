import 'package:flutter/material.dart';
import 'package:yourownpizza/View/Shared/Bottombar.dart';
import 'package:yourownpizza/View/helpers/constants.dart';

class PizzaCrust extends StatelessWidget {
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                            child: drankenButton,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                                  child: Text(
                                    'Pizza crust',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Divider(
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  PizzaCrustCard(
                                    type: 'Normaal',
                                  ),
                                  PizzaCrustCard(
                                    type: 'Kaas',
                                  ),
                                ],
                              ),
                              SizedBox(height: 50.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  PizzaCrustCard(
                                    type: 'Knakworst',
                                  ),
                                  PizzaCrustCard(
                                    type: 'Kiwi',
                                  ),
                                ],
                              ),
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
            )
          ],
        ),
      ),
    );
  }
}


class PizzaCrustCard extends StatelessWidget {

  final String type;
  PizzaCrustCard({this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
              child: Text('$type')
          ),
          Container(
            decoration: bottomSheet,
            height: 81.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaCrust()));
                      },
                      child: Text(
                        'Dik',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: mainColor,
                      shape: buttonStyle,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Dun',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: mainColor,
                      shape: buttonStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: pizzaBottomStyle,
      width: 250.0,
      height: 150.0,
    );
  }
}
