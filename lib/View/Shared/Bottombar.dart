import 'package:flutter/material.dart';

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
              borderRadius: BorderRadius.circular(80.0),
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Order Now',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
void _settingModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          height: 250,
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.local_pizza),
                  title: new Text("Totaal pizza's: "),
                  onTap: () => {}
              ),
              new ListTile(
                leading: new Icon(Icons.euro_symbol),
                title: new Text('Te betalen: '),
                onTap: () => {},
              ),
              RaisedButton(
                onPressed: () {},
                child: Container(

                ),
              )
            ],
          ),
        );
      }
  );
}
