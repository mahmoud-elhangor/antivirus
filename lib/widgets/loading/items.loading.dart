import 'package:flutter/material.dart';
import '../../helpers/logo.app.dart';
import 'package:flutter_animator/flutter_animator.dart';
class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [logoApp(40, 120), loadingCircular()]);
  }

  Widget loadingCircular() {
    return ZoomIn(
        child: CircularProgressIndicator(color: Colors.deepOrange[700]));
  }
}
