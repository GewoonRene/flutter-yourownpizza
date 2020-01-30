
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourownpizza/View/drinks/drinks.dart';
import 'package:yourownpizza/View/helpers/constants.dart';

var routeButton = new NavigationButton("Drinks", Drinks());
var backButton = new NavigationButton("Back");

class NavigationButton extends StatelessWidget {

  /// String [title] - Text of the button.
  String title;
  /// Widget | null [route] - Destination of the button.
  Widget route;

  NavigationButton(this.title, [this.route = null]);

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
