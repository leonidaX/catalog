//@dart=2.9

import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/constante/recepeStock.dart';
import 'package:food_app/widgets/custom_tab_bar.dart';
import 'package:food_app/widgets/food.dart';
import 'package:food_app/widgets/textfield.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ArticleRecipe> recipes = [
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img4, "5000", "8000", "Fcfa"),
    ArticleRecipe(Config.assets.food_img5, "5000", "8000", "Fcfa"),
  ];
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCD8FA),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF9C0D66),
          leading: Image.asset(
            Config.assets.filter1,
          ),
          actions: [
            Text(
              "F L O ' S H O P",
              style: TextStyle(
                color: Color(0xFFEEBDEB),
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontFamily: "badScript",
              ),
            ),
            Column(
              children: [
                Image.asset(Config.assets.panier),
                Text(
                  "mon panier",
                  style: TextStyle(color: Color(0xFFEEBDEB), fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                "Bonjour, Bienvenue chez Flo'Shop. Numero-1 des commandes et livraisons de produits en ligne",
                style: Config.style.titleStyle.copyWith(
                    fontFamily: "badScript",
                    color: Color(0xFF8D1155),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: CTextField(
                      hint: "Rechercher un produit à votre gout",
                      prefix: Icon(
                        Icons.search,
                        color: Config.colors.hintColor,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(Config.assets.filter1)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "B I E N V E N U E",
                style: Config.style.titleStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "badScript",
                  color: Color(0xFF201985),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTabBar(
                titles: ["POPULAIRE", "PROMOTIONS", "NOUVEAUTE", "CONTACT"],
                onChanged: (value) {
                  page = value;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "N O S   P R O M O S",
                  style: TextStyle(
                      color: Color(0xFF201985),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "badScript"),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                height: 570,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    itemCount: recipes.length,
                    itemBuilder: (context, index) {
                      return _RecipeWidget(
                        recipe: recipes[index],
                      );
                    }),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Text(
                  "N O S   P R O D U I T S",
                  style: TextStyle(
                      color: Color(0xFF201985),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "badScript"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 570,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    itemCount: recipes.length,
                    itemBuilder: (context, index) {
                      return _RecipeWidget(
                        recipe: recipes[index],
                      );
                    }),
              ),
              Container(
                child: Column(
                  children: [
                    ContactWidget(
                      asset: "assets/logo/Daco_172464.png",
                      w: 20.0,
                      h: 20.0,
                      color: Color(0xFFE71B14),
                      text: " dataplay21@gmail.com",
                      url: "mailto:dataplay21@gmail.com",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ContactWidget(
                      asset: "assets/logo/Daco_4642047.png",
                      w: 25.0,
                      h: 25.0,
                      color: Color(0xFF1E13BD),
                      text: " messenger",
                      url: "https://messenger.com",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ContactWidget(
                      asset: "assets/logo/Daco_980.png",
                      w: 24.0,
                      h: 24.0,
                      text: "Notre site",
                      color: Color(0xFF140C7C),
                      url: "https://www.facebook.com",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ContactWidget(
                      asset: "assets/logo/Daco_141279.png",
                      w: 24.0,
                      h: 24.0,
                      color: Color(0xFF093D14),
                      text: '+241 062150530',
                      url: '',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ContactWidget(
                      asset: "assets/logo/Daco_172464.png",
                      w: 20.0,
                      h: 20.0,
                      color: Color(0xFF382BF1),
                      text: 'Notre lien playstore',
                      url: "https://www.playstore.com",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FabCircularMenu(
        fabOpenIcon: Icon(
          FontAwesomeIcons.phone,
          color: Colors.yellow[600],
          size: 32.0,
        ),
        ringDiameter: 250.0,
        ringWidth: 58.0,
        ringColor: Colors.blue[50],
        fabColor: Colors.green,
        fabOpenColor: Colors.greenAccent,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                _launchUrl("https://www.facebook.com");
                print('Home');
              }),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.lightBlueAccent,
              ),
              onPressed: () {
                _launchUrl("whatsapp://send?phone=+24107818771&text=hello");
                print('Favorite');
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.envelope, color: Colors.purple[800]),
              onPressed: () {
                _launchUrl("mailto:dataplay21@gmail.com");
                print('Creation');
              }),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.linkedinIn,
              color: Colors.pink[600],
            ),
            onPressed: () {
              _launchUrl("https://fr.linkedin.com");
              print('Nouveauté');
            },
          ),
        ],
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  final String asset;
  final double w;
  final double h;
  final String text;
  final Color color;
  final String url;
  const ContactWidget({
    Key? key,
    required this.asset,
    required this.text,
    required this.color,
    required this.url,
    required this.w,
    required this.h,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          asset,
          width: w,
          height: h,
        ),
        RichText(
          text: TextSpan(
              text: text,
              style: TextStyle(
                  color: color,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "badScript"),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _launchUrl(url);
                }),
        )
      ],
    );
  }
}

void _launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Erreur";
  }
}

class _RecipeWidget extends StatelessWidget {
  final ArticleRecipe recipe;
  const _RecipeWidget({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      child: Container(
        child: FoodWidget(
          asset: recipe.name,
          oldPrice: recipe.oldPrice,
          price: recipe.newPrice,
          devise: recipe.description,
        ),
      ),
    );
  }
}
