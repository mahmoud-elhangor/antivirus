import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

ZoomIn logoApp(double margin, double size) {
  return ZoomIn(
      from: .8,
      child: Container(
          margin: EdgeInsets.only(bottom: margin),
          decoration: BoxDecoration(),
          child: Icon(Icons.local_fire_department,
              size: size, color: Colors.deepOrange[900])));
}
