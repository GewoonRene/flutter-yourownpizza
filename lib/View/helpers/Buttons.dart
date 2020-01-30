
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourownpizza/View/helpers/constants.dart';

/// ....
///   USAGE:
///     - create new instance.
///     - button TO a route = new Buttons("title_here", WidgetHere());
///     - button BACK a route = new Buttons("title_here");
/// ....
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
          /// Checks route type
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
