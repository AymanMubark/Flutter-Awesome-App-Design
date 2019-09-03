import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_epay/Themes/constants.dart';
import 'package:smart_epay/screens/home/components/deposit.dart';
import 'package:smart_epay/screens/home/components/transfare.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Card(
              margin: EdgeInsets.all(0),
              color: appcolor,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      radius: 30,
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Flexible(
                    child: Text(
                      'Ayman Mubarak Ahmed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'YOUR BALANCE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Flexible(
                    child: Text(
                      '25000 AED',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: Row(
                      children: <Widget>[
                        buildMainCard(FontAwesomeIcons.piggyBank, () {
                          Navigator.pushNamed(context, '/cahires');
                        }, 'Collect Mony'),
                        buildMainCard(FontAwesomeIcons.exchangeAlt, () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return TransferModal();
                            },
                          );
                        }, 'Transfer Mony'),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: <Widget>[
                        buildMainCard(FontAwesomeIcons.fileInvoiceDollar, () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return DepositModal();
                              });
                        }, 'Deposit'),
                        buildMainCard(FontAwesomeIcons.signOutAlt, () {
                          Navigator.pushReplacementNamed(context, '/');
                        }, 'Logout'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Flexible buildMainCard(IconData fontIcon, Function onTap, String title) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                fontIcon,
                size: 70,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$title',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: appcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}