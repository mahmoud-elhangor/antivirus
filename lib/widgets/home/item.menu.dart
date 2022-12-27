
import 'package:flutter/material.dart';

import '../../helpers/separate.dart';

class ItemsMenu  extends StatelessWidget {
  IconData icon;
  String text;

  ItemsMenu(this.icon, this.text);

  @override
  Widget build(context) {
    return Container(
        padding: const EdgeInsets.all(12),
        // margin: EdgeInsets.only(top: 0, bottom: 0),
        alignment: Alignment.center,
        width: 108,
        height: 80,
        decoration: const BoxDecoration( color: Color.fromRGBO(20, 20, 20, .3),
            ),
        child: FloatingActionButton(
            onPressed: () {},
            child: Column(children: [
              Separated(0, 13),
              Icon(icon, color: Colors.white),
              Separated(0, 3),
              fontHome(text)
            ])));
  }

  Widget selected() {
    return Container(
        padding: const EdgeInsets.only(top: 18, bottom: 8),
        margin: const EdgeInsets.only(top: 0, bottom: 0),
        alignment: Alignment.center,
        width: 105,
        height: 80,
        decoration: BoxDecoration(color: Colors.deepOrange[900]),
        child: Column(children: [
          Icon(icon, color: Colors.white),
          Separated(0, 3),
          fontHome(text)
        ]));
  }

  Text fontHome(String text) {
    return Text(text, style: TextStyle(color: Colors.grey[300], fontSize: 11));
  }
}
