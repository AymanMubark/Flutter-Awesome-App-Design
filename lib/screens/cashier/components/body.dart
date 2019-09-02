import 'package:flutter/material.dart';
import 'package:smart_epay/Themes/constants.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      child: ListView(
        children: <Widget>[
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
          buildCashierCard(),
        ],
      ),
      removeTop: true,
      context: context,
    );
  }

  Widget buildCashierCard() {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return buildModal();
          },
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  radius: 35,
                  backgroundColor: appcolor,
                  foregroundColor: appcolor,
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ayman Mubarak Ahemd',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    Text(
                      'Tom and Jery',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Text(
                  '28000 AED',
                  style: TextStyle(
                    fontSize: 14,
                    color: appcolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildModal() {
    return Container(
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Container(
                    decoration: BoxDecoration(
                        color: appcolor,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(15.0),
                            topRight: const Radius.circular(15.0))),
                    child: Center(
                      child: Text("Hi modal sheet",style: TextStyle(color: Colors.white,fontSize: 18),),
                    )),
              ),
            ),
            Flexible(
              flex: 2,
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}
