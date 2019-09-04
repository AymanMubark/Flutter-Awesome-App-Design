import 'package:flutter/material.dart';
import 'package:smart_epay/Themes/constants.dart';
import 'package:smart_epay/screens/cashier/components/collect.dart';
import 'package:smart_epay/models/cashire.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Cashier> cashiers = [
    Cashier(id: 1, name: 'Ayman Mubarak', merchent: 'Tom & jery', balance: 5000),
    Cashier(id: 2, name: 'Jamal Ahmed', merchent: 'Terrry', balance: 600),
    Cashier(id: 3, name: 'Omar Khaled', merchent: 'Siper', balance: 300),
  ]; 
  List<Cashier> searchResult = [];

  TextEditingController controller = new TextEditingController();
  
  onSearchTextChanged(String text) {
    searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    cashiers.forEach((cashier) {
      if (cashier.name.toLowerCase().contains(text.toLowerCase()) || cashier.merchent.toLowerCase().contains(text.toLowerCase()))
        searchResult.add(cashier);
    });

    setState(() {});
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: new ListTile(
            leading: new Icon(Icons.search),
            title: new TextField(
              controller: controller,
              decoration: new InputDecoration(
                  hintText: 'Search', border: InputBorder.none),
              onChanged: (String value){
                onSearchTextChanged(value);
              },
            ),
            trailing: new IconButton(
              icon: new Icon(Icons.cancel),
              onPressed: () {
                controller.clear();
                onSearchTextChanged('');
              },
            ),
          ),
        ),
        Expanded(
          child: searchResult.length != 0 || controller.text.isNotEmpty
              ? new ListView.builder(
            itemCount: searchResult.length,
            itemBuilder: (context, i) {
              return buildCashierCard(searchResult[i]);
            },
          )
              : new ListView.builder(
            itemCount: cashiers.length,
            itemBuilder: (context, i) {
              return new Card(
                child: buildCashierCard(cashiers[i]),);
            },
          ),
        )
      ],
    );
  }

  Widget buildCashierCard(Cashier cashier) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CollectModal();
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  backgroundColor: Colors.transparent,
                  radius: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cashier.name,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      Text(
                        cashier.merchent,
                        style: TextStyle(fontSize: 14, color: secondcolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              cashier.balance.toString() + ' AED',
              style: TextStyle(
                fontSize: 14,
                color: appcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
