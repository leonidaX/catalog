import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Config.assets.splash_img),
            Container(
              decoration: BoxDecoration(
                  color: Config.colors.primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Text(
                "F L O ' S H O P",
                style: TextStyle(
                    color: Color(0xFF94186F),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "badScript"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
