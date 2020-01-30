import 'package:flutter/material.dart';
import 'package:yourownpizza/View/Entry.dart';
import 'constants.dart';


class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
      },
      child: Text(
        'Dranken',
        style: TextStyle(color: Colors.white),
      ),
      color: mainColor,
      shape: buttonStyle,
    );
  }
}