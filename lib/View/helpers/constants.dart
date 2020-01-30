
import 'package:flutter/material.dart';
///////////
//COLORS///
///////////

var mainColor = Colors.orange[800];
var mainBlack = Colors.black87;

///////////
//BUTTONS//
///////////

var buttonStyle = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(26),
);

//////////////////////
//PIZZA BOTTOM STYLE//
//////////////////////

var pizzaBottomStyle = BoxDecoration(
  border: Border.all(
    color: mainColor,
    width: 1.0,
  ),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(60.0),
    topLeft: Radius.circular(60.0),
  ),
);

var bottomSheet = BoxDecoration(
  color: mainBlack,
  border: Border.all(
    color: mainBlack,
    width: 1.0,
  ),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(60.0),
    topLeft: Radius.circular(60.0),
  ),
);