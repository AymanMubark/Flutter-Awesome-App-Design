import 'package:flutter/material.dart';
import 'package:smart_epay/Themes/constants.dart';

class CollectModal extends StatefulWidget {
  CollectModal({Key key}) : super(key: key);

  CollectModalState createState() => CollectModalState();
}

class CollectModalState extends State<CollectModal> {
  String selected;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Card(
          shape:
               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          margin: EdgeInsets.symmetric(vertical: 120, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 40, top: 40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home.png'),
                    fit: BoxFit.fill,
                  ),
                  color: appcolor,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(15.0),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Current Balance",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "2800000 AED",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                         Column(
                              children: <Widget>[
                                Text(
                                  'Cashier',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondcolor),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Ayman Mubarak Ahmed',
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                             VerticalDivider(
                                  color: bordercolor,
                                ),
                             Column(
                              children: <Widget>[
                                Text(
                                  'Merchent',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: secondcolor),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Tom & Jery',
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: bordercolor,
                      height: 10,
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      onChanged: (String value) {},
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Amount To Collect',
                          hintStyle: TextStyle(color: appcolor)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    buildBigRaisedButton(context, 'Collect Now', () {
                                            Navigator.pop(context);
                    }),
                     SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
