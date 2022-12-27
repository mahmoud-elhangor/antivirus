import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter/material.dart';
ZoomIn logoApp(double margin, double size) {
  return ZoomIn(
      child: Container(
          margin: EdgeInsets.only(bottom: margin),
          decoration: const BoxDecoration(),
          child: Icon(Icons.local_fire_department,
              size: size, color: Colors.deepOrange[900])));
}
