import 'package:fire_antivirus/pages/home/home.page.dart';
import 'package:fire_antivirus/pages/loading/loading.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fire virus',
        initialRoute: "loading",
        routes: {
          "loading": (context) => LoadingFirePage(),
          "home": (context) => HomeFirePage(),
        });
  }
}
