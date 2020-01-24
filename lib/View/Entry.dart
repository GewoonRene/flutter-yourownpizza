import 'package:flutter/material.dart';
import '../View/Shared/Bottombar.dart';

class FirstPage extends StatelessWidget {
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
            SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "LOGO?",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Yout own pizza",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Expanded(
              child: Container(
                width: 5000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
            ),
            Container(
//              height: 50,
              padding: EdgeInsets.only(
                bottom: 90,
              ),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Entree(),
                  ),
                  Center(
                    child: Pizza(),
                  ),
                  Center(
                    child: Dessert(),
                  ),
                ],
              ),
            ),
            Container(
              child: BottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class Entree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 60,
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          color: Colors.orange[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: () {},
          child: Container(
            width: 250,
            height: 50,
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Voorgerechten',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Pizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          color: Colors.orange[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: () {},
          child: Container(
            width: 250,
            height: 50,
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Pizza',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                   fontSize: 16
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Dessert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 60,
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          color: Colors.orange[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: () {},
          child: Container(
            width: 250,
            height: 50,
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Nagerecht',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
            ),
          ),
        ),
      ),
    );
  }
}
