import 'package:flutter/material.dart';
import 'package:smart_epay/Themes/constants.dart';

class TransferModal extends StatefulWidget {
  TransferModal({Key key}) : super(key: key);

  TransferModalState createState() =>
      TransferModalState();
}

class TransferModalState extends State<TransferModal> {
  String selected;
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        "Current Balance",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "2800000 AED",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
            Flexible(
        flex: 2,
        child: Column(
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: DropdownButtonFormField(
                        value: selected,
                        decoration: InputDecoration(
                            hintText: 'Cashier Name',
                            hintStyle: TextStyle(color: appcolor)),
                        items: ["A", "B", "C"]
                            .map((label) => DropdownMenuItem(
                                  child: Text(label),
                                  value: label,
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() => selected = value);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Flexible(
                      child: TextField(
                        textAlign: TextAlign.center,
                        onChanged: (String value) {},
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'Amount To Transfare',
                            hintStyle: TextStyle(color: appcolor)),
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
                          'Transfare Now',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    
    )
        ],
      ),
        ),
  );
}
}