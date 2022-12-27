import 'package:flutter/material.dart';

class Separated extends StatelessWidget {
  double width = 0;
  double height = 0;

  Separated(this.width, this.height);

  SizedBox build(context) {
    return SizedBox(width: this.width, height: this.height);
  }
}
