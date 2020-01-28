import 'package:yourownpizza/View/Entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
);

class MyApp extends StatelessWidget {
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
                  Text("LOGO?", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Your own pizza", style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 300,),
            Expanded(
              child: Container(
                width: 5000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60),),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 150,),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )]
                        ),
                        child: TextInputField(),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        child: MyButton(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        height: 50,
        width: 100,
        child: Center(
          child:
          RaisedButton(
            child: Text('Go', style: TextStyle(color: Colors.white),),
            color: Colors.orange[800],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                    FirstPage()
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          width: 250,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[200])),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              LengthLimitingTextInputFormatter(3),
              WhitelistingTextInputFormatter.digitsOnly,
              BlacklistingTextInputFormatter.singleLineFormatter
            ],
            decoration: InputDecoration(
                labelText: "Table Number?",
                hintText: "001",
                hintStyle: TextStyle(color: Colors.grey,),
                border: InputBorder.none
            ),
          ),
        ),
      ],
    );
  }
}


