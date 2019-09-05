import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_epay/Themes/constants.dart';
import 'package:smart_epay/services/login.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: double.infinity,vertical: 200),
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: appcolor,
              image: DecorationImage(image: AssetImage('assets/images/login.png',),fit: BoxFit.contain)
                          ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Please Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
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
                SizedBox(
                  height: 15,
                ),
                buildBigRaisedButton(context, 'Login', () {
                  Login(_password).then((value) {
                    if (value == true) {
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  });
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
