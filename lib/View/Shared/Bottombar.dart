import 'package:flutter/material.dart';
import 'package:yourownpizza/View/helpers/constants.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
      child: Container(
        height: 150,
        width: 2000,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: TotalPizza(),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        child: OrderNowButton(),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        child: TotalPrice(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TotalPizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250,
      child: Center(
        child: Align(
//          alignment: Alignment.centerLeft,
          child: Text(
            "Totaal pizza's: ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class TotalPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250,
      padding: EdgeInsets.only(
        right: 70,
      ),
      child: Center(
        child: Align(
//          alignment: Alignment.center,
          child: Text(
            'Euro',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class OrderNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: RaisedButton(
          color: Colors.black,
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          textColor: Colors.white,
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.orange[800],
              borderRadius: BorderRadius.circular(26.0),
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Meer zien',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.black
          ),
          height: 250,
          padding: EdgeInsets.only(
            top: 30,
            left: 50,
          ),
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.local_pizza, color: Colors.white,),
                title: new Text("Totaal pizza's: ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                  ),
                ),
                onTap: () => {},
              ),
              new ListTile(
                leading: new Icon(Icons.euro_symbol, color: Colors.white,),
                title: new Text('Te betalen: ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                  ),
                ),
                onTap: () => {},
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 250,
                ),
                child: RaisedButton(
                  color: Colors.orange[800],
                  onPressed: () {},
                  shape: buttonStyle,
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Text(
                      'Nu bestellen',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      });
}
