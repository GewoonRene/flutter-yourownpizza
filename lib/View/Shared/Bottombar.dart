import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 5000,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: RaisedButton(
                  color: Colors.orange[800],
                  onPressed: () {},
                  child: Text('Order Now', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Container(
              child: Center(

              ),
            )
          ],
        ),
      ),
    );
  }
}