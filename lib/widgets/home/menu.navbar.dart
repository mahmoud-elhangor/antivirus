import 'package:fire_antivirus/helpers/logo.app.dart';
import 'package:flutter/material.dart';

AppBar navBar() {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 55,
    leading: logoApp(0, 50),
    toolbarOpacity: .6,
    backgroundColor: Color.fromRGBO(20, 25, 25, 1),
    title: Text("Fire Antivirus",
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: "ubuntu")),
    // elevation: 2,
  );
}
