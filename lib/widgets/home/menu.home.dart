import 'package:flutter/material.dart';

import 'item.menu.dart';

class MenuHome extends StatefulWidget {
  @override
  MenuHomeState createState() => MenuHomeState();
}

class MenuHomeState extends State<MenuHome> {
  @override
  Widget build(context) {
    return Container(
        width: 79,
        decoration: decorate(),
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: insertItems (),
        ));
  }

  BoxDecoration decorate() {
    return const BoxDecoration(
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
