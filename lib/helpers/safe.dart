import 'package:flutter/material.dart';

class Safe extends StatelessWidget {
  Widget child;

  Safe(this.child);

  SafeArea build(context) {
    return SafeArea(child: this.child);
  }
}
