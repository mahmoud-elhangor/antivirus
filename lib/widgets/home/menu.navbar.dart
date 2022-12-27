
import 'package:flutter/material.dart';

import '../../helpers/logo.app.dart';

AppBar navBar() {
  return AppBar(

    actions: [Icon(Icons.local_fire_department_rounded,)],
    centerTitle: true,
    toolbarHeight: 80,
    leading: logoApp(0, 50),
    toolbarOpacity: .3,
    backgroundColor: const Color.fromRGBO(20, 25, 25, 1),
    title: const Text("Fire Antivirus",
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: "ubuntu")),
    // elevation: 2,
  );
}
