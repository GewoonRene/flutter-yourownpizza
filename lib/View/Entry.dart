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
            SizedBox(height: 80.0,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("LOGO?",
                    style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Yout own pizza",
                    style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 200,),
            Expanded(
              child: Container(
                width: 5000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 150,),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: RaisedButton(
                            color: Colors.orange[800],
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Go Back', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                    ],
                  ),
                ),
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

