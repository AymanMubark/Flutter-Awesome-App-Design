import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smart_epay/Themes/constants.dart';
import 'package:image_picker/image_picker.dart';

class DepositModal extends StatefulWidget {
  DepositModal({Key key}) : super(key: key);

  DepositModalState createState() => DepositModalState();
}

class DepositModalState extends State<DepositModal> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  String selected;
  String imgUrl = "assets/images/upload.png";
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        getImage();
                      },
                      child: _image == null
                          ? Image.asset(
                              imgUrl,
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            )
                          : Image.file(
                              _image,
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      onChanged: (String value) {},
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Amount To Deposit',
                          hintStyle: TextStyle(color: appcolor)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    buildBigRaisedButton(context, 'Bank Depsoit', () {
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
