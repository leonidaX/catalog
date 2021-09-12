//@dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';

class CTextField extends StatelessWidget {
  final Color backgroundColor;
  final String hint;
  final double radius;
  final Widget prefix;

  const CTextField(
      {Key key, this.backgroundColor, this.hint, this.radius = 15, this.prefix})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor ?? Config.colors.backgroundTextField,
        hintText: hint,
        hintStyle: TextStyle(color: Config.colors.hintColor, fontSize: 20),
        prefixIcon: prefix,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
