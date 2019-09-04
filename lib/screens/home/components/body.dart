import 'package:flutter/material.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
          decoration: BoxDecoration(
            color: appcolor,
            image:DecorationImage(image:  AssetImage('assets/images/home.png'),fit: BoxFit.fill ),
          ),
            margin: EdgeInsets.all(0),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(45.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    radius: 50,
                   backgroundColor: appcolor,
                  ),
                  Text(
                    'Ayman Mubarak Ahmed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'YOUR BALANC',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '25000 AED',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
          ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: <Widget>[
                IntrinsicHeight(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Expanded(
                  child: buildMainCard('collect.png', () {
                    Navigator.pushNamed(context, '/cahires');
                  }, 'Collect Mony'),
                ),
                Expanded(
                  child: buildMainCard('transfier.png', () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return TransferModal();
                      },
                    );
                  }, 'Transfier Mony'),
                ),
              ]),
            ),
            IntrinsicHeight(
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Expanded(
                  child: buildMainCard('deposit.png', () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DepositModal();
                      },
                    );
                  }, 'Deposit Mony'),
                ),
                Expanded(
                  child: buildMainCard('logout.png', () {
                    Navigator.pushReplacementNamed(context, '/');
                  }, 'Logout'),
                ),
              ]),
            )
           ],
         ),
       )
        ],
      ),
    );
  }

  InkWell buildMainCard(String image, Function function, String title) {
    return InkWell(
      onTap: () => function(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                fit: BoxFit.contain,
                image: AssetImage('assets/images/$image'),
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
