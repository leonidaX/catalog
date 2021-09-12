import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_app/config/functions.dart';

class SplashWidget extends StatelessWidget {
  final int time;
  final Widget child, nextPage;
  const SplashWidget(
      {Key? key, this.time = 0, required this.child, required this.nextPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: time), () {
      route(context, nextPage, close: false);
    });
    return child;
  }
}
