import 'package:flutter/material.dart';

final Color appcolor = Color(0xFF4DB75A);
final Color bordercolor = Color(0xFFE2E2E2);
final Color secondcolor = Color(0xFF949494);

RaisedButton buildBigRaisedButton(
      BuildContext context, String title, Function function) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      color: appcolor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      child: Text(
        '$title',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: function,
    );
  }