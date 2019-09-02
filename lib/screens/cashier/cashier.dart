import 'package:flutter/material.dart';
import 'package:smart_epay/screens/Cashier/components/body.dart';

class CashierScreen extends StatelessWidget {
  const CashierScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cashier List'),
      ),
      body: Body(),
    );
  }
}