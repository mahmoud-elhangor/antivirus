
import 'package:flutter/material.dart';

import 'pages/home/home.page.dart';
import 'pages/loading/loading.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fire virus',
        initialRoute: "loading",
        routes: {
          "loading": (context) => const LoadingFirePage (),
          "home": (context) => const HomeFirePage(),
        });
  }
}
