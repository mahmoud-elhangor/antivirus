import 'package:animate_do/animate_do.dart';
import 'package:fire_antivirus/helpers/logo.app.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Widget build(context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [logoApp(40, 120), this.loadingCircular()]);
  }

  Widget loadingCircular() {
    return ZoomIn(
        child: CircularProgressIndicator(color: Colors.deepOrange[700]));
  }
}
