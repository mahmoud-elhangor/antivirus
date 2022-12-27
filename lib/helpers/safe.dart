import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Safe extends StatelessWidget {
  Widget child;

  Safe(this.child, {super.key});

  @override
  SafeArea build(context) {
    return SafeArea(child: child);
  }
}
