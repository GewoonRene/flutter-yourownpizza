
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourownpizza/View/helpers/constants.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {

  /// String [title] - Text of the button.
  String title;
  /// Widget | null [route] - Destination of the button.
  Widget route;

  Buttons(this.title, [this.route = null]);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
          this.route != null ? Navigator.push(context, MaterialPageRoute(builder: (context) => this.route))
          : Navigator.pop(context);
        },
      child: Text(
        this.title,
        style: TextStyle( color: Colors.white )
      ),
      color: mainColor,
      shape: buttonStyle
    );
  }

}
