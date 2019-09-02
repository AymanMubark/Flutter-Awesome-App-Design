import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_epay/Themes/constants.dart';
import 'package:smart_epay/screens/home/home.dart';
import 'package:smart_epay/services/login.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: SvgPicture.asset('assets/images/login.svg',
                  semanticsLabel: 'A red up arrow'),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Text(
                'Please Login',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, color: Colors.grey.shade900),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: TextField(
                onChanged: (String value) {
                  _password = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: appcolor,
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                color: appcolor,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Login(_password).then((value) {
                    if (value == true) {
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  });
                },
              ),
            )
          ],
        ));
  }
}
