
import 'package:flutter/material.dart';

import '../../widgets/loading/items.loading.dart';

class LoadingFirePage extends StatefulWidget {
  static const String routeName="loading";

  const LoadingFirePage({super.key});

  @override
  LoadingFireState createState() => LoadingFireState();
}

class LoadingFireState extends State<LoadingFirePage> {
  @override
  Widget build(context) {
    // routing
    toHome(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey[900], body: const Center(child: Items())));
  }

  void toHome(context) {
    Future delays = Future.delayed(const Duration(seconds: 3), () {
      return true;
    });

    delays.then((dynamic value) {
      Navigator.pushReplacementNamed(context, "home");
    });
  }
}
