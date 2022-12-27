import 'package:fire_antivirus/helpers/safe.dart';
import 'package:fire_antivirus/widgets/home/menu.home.dart';
import 'package:fire_antivirus/widgets/home/menu.navbar.dart';
import 'package:fire_antivirus/widgets/home/status.home.dart';
import 'package:flutter/material.dart';

class HomeFirePage extends StatefulWidget {
  HomeFireState createState() => new HomeFireState();
}

class HomeFireState extends State<HomeFirePage> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: navBar(),
            backgroundColor: Colors.grey[900],
            body: this.itemsHome()));
  }

  Row itemsHome() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // menu
        Safe(MenuHome()),

        // services
        Safe(StatusHome()),
      ],
    );
  }
}
