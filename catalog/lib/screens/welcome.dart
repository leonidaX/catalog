import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/config/functions.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/welcome2.dart';
import 'package:food_app/widgets/button.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            alignment: Alignment.center,
            height: height(context) / 1.7,
            decoration: BoxDecoration(
              color: Config.colors.primaryColor,
              image: DecorationImage(
                image: AssetImage(Config.assets.welcome_img),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Acheté et livré, c'est simple la vie",
                  style: TextStyle(
                    fontSize: 25,
                    color: Config.colors.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: "badScript",
                  ),
                ),
                Text(
                  "Nous vous livrons vos articles dans toute la ville. Commandez vite pour etre rapidement en possession de votre article",
                  style: TextStyle(
                    fontSize: 18,
                    color: Config.colors.subtitleColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: "brandgro",
                  ),
                ),
                SizedBox(
                  height: 65.0,
                ),
                CButton(
                  height: 20,
                  title: "Continuons",
                  onPressed: () {
                    route(context, Welcome2());
                  },
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
