
import 'package:flutter/material.dart';

import '../../helpers/logo.app.dart';

AppBar navBar() {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 80,
    leading:logoApp(0, 40) ,
    backgroundColor: const Color.fromRGBO(20, 25, 25, 1),
    title: const Text("Fire Antivirus",
        style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: "ubuntu")
    ),
    // elevation: 2,
  );
}
