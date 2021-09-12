import 'package:flutter/material.dart';

class Config {
  static final colors = _Color();
  static final assets = _Asset();
  static final style = _Style();
}

class _Color {
  final primaryColor = Color(0xFFFCB4E0);
  final primaryTextColor = Color(0xFF272140);
  final accentTextColor = Color(0xFF938DB5);
  final subtitleColor = Color(0xFF5D577E);
  final greenColor = Color(0xFF4CD964);
  final backgroundTextField = Color(0xFFF3F1F1);
  final hintColor = Color(0xFFC2BDBD);
}

class _Asset {

  final filter1 = "assets/images/filter1.png";
  final panier = "assets/images/panier.png";
}

class _Style {
  final titleStyle = TextStyle(
      fontFamily: "badScript",
      fontSize: 20,
      color: Color(0xFF13082C),
      fontWeight: FontWeight.w500);
}
