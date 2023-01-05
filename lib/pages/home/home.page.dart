
import 'package:flutter/material.dart';

import '../../helpers/safe.dart';
import '../../widgets/home/menu.home.dart';
import '../../widgets/home/menu.navbar.dart';
import '../../widgets/home/status.home.dart';

class HomeFirePage extends StatefulWidget {
  static const String routeName="home";

  const HomeFirePage({super.key});

  @override
  HomeFireState createState() => HomeFireState();
}

class HomeFireState extends State<HomeFirePage> {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: navBar(),
            backgroundColor: Colors.grey[900],
            body: itemsHome()));
  }

  Row itemsHome() {
    return Row(
     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
     // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // menu
        Safe(MenuHome()),

        // services
        Safe(StatusHome()),
      ],
    );
  }
}
