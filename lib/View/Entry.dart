import 'package:flutter/material.dart';
import 'package:yourownpizza/View/pizza/pizzabottom.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Row(
        children: <Widget>[
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ),
          Center (
            child: RaisedButton(
              child: Text(
                'Pizza Bottoms',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PizzaBottom())
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}

//
//child: RaisedButton(
//child: Text(
//'Pizza Bottom',
//style: TextStyle(
//color: Colors.white),
//),
//color: Colors.deepOrange,
//onPressed: () {
//Navigator.push(
//context,
//MaterialPageRoute(builder: (context) =>
//PizzaBottom()
//),
//);
//}
//),
//),