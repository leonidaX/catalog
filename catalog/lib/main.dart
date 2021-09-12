//@dart=2.9

//flutter build apk --split-per-abi
import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/splashScreen.dart';
import 'package:food_app/screens/welcome.dart';
import 'package:food_app/widgets/splash.dart';

import 'config/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/basket_of_fruits1.png"), context);
    precacheImage(AssetImage("assets/images/basket_of_fruits2.png"), context);
    precacheImage(AssetImage("assets/images/f1.png"), context);
    precacheImage(AssetImage("assets/images/f2.png"), context);
    precacheImage(AssetImage("assets/images/f3.png"), context);
    precacheImage(AssetImage("assets/images/f4.png"), context);
    precacheImage(AssetImage("assets/images/f5.png"), context);
    precacheImage(AssetImage("assets/images/filter1.png"), context);
    precacheImage(AssetImage("assets/images/filter2.png"), context);
    precacheImage(AssetImage("assets/images/panier.png"), context);

    precacheImage(AssetImage("assets/images/map.png"), context);
    precacheImage(AssetImage("assets/images/Home screen one.png"), context);
    precacheImage(AssetImage("assets/images/order.png"), context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "brandgro",
        primaryColor: Config.colors.primaryColor,
      ),
      home: SplashWidget(
        child: SplashScreen(),
        nextPage: Welcome(),
        time: 5,
      ),
    );
  }
}
