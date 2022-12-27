import 'package:flutter/material.dart';

import 'item.menu.dart';

class MenuHome extends StatefulWidget {
  MenuHomeState createState() => MenuHomeState();
}

class MenuHomeState extends State<MenuHome> {
  Widget build(context) {
    return Container(
        width: 79,
        decoration: this.decorate(),
        child: ListView(
          physics: ScrollPhysics(),
          children: this.insertItems(),
        ));
  }

  BoxDecoration decorate() {
    return BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(5), bottomRight: Radius.circular(5)),
        color: Color.fromRGBO(20, 20, 20, .7));
  }

  dynamic insertItems() {
    return [
      ItemsMenu(Icons.verified_user_outlined, "Status").selected(),
      ItemsMenu(Icons.lock, "Protected"),
      ItemsMenu(Icons.fingerprint, "Privacy"),
      ItemsMenu(Icons.speed, "Tuned UP"),
      ItemsMenu(Icons.ac_unit, "CPU"),
      ItemsMenu(Icons.settings_remote, "Remote"),
      ItemsMenu(Icons.settings, "Settings")
    ];
  }
}
