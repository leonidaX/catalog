//@dart=2.9

import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';

class CButton extends StatelessWidget {
  final String title;
  final Color titleColor, borderColor, color;
  final double radius, height;
  final bool border;
  final onPressed;

  const CButton(
      {Key key,
      this.title,
      this.titleColor,
      this.borderColor,
      this.color,
      this.radius = 10.0,
      this.height = 15,
      this.border = false,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(fontSize: 16.0, color: titleColor ?? Colors.white),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              side: border
                  ? BorderSide(
                      color: borderColor ?? Config.colors.primaryColor,
                      width: 2)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(radius))),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: height, horizontal: 20.0)),
          backgroundColor: MaterialStateProperty.all<Color>(
              color ?? Config.colors.primaryColor),
        ));
  }
}
