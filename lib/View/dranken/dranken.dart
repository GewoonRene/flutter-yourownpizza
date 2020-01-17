import 'package:flutter/material.dart';
import '../helpers/constants.dart';

class Dranken extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80.0,),
            SizedBox(height: 100,),
            Expanded(
              child: Container(
                width: 5000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(roundedCorners), topRight: Radius.circular(roundedCorners),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
