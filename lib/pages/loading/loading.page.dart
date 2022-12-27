import 'package:fire_antivirus/widgets/loading/items.loading.dart';
import 'package:flutter/material.dart';

class LoadingFirePage extends StatefulWidget {
  LoadingFireState createState() => new LoadingFireState();
}

class LoadingFireState extends State<LoadingFirePage> {
  Widget build(context) {
    // routing
    this.toHome(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey[900], body: Center(child: Items())));
  }

  void toHome(context) {
    Future delays = Future.delayed(Duration(seconds: 3), () {
      return true;
    });

    delays.then((dynamic value) {
      Navigator.pushReplacementNamed(context, "home");
    });
  }
}
