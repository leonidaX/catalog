//@dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/config/functions.dart';
import 'package:food_app/screens/paymentScreen.dart';
import 'package:food_app/widgets/button.dart';

class FoodWidget extends StatelessWidget {
  final String oldPrice, devise, price, asset;
  final Function onTap, onFav, onAdd;
  const FoodWidget(
      {Key key,
      this.oldPrice,
      this.devise,
      this.price,
      this.asset,
      this.onTap,
      this.onFav,
      this.onAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 580,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFD6B9CC),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(.1),
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 550,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Positioned(
                    left: 0,
                    child: IconButton(
                      onPressed: onFav,
                      icon: Icon(
                        FontAwesomeIcons.heart,
                        color: Config.colors.primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Config.colors.primaryColor.withOpacity(.2),
                        shape: BoxShape.circle,
                        border: Border.all(color: Config.colors.primaryColor),
                      ),
                      child: Icon(
                        FontAwesomeIcons.plusCircle,
                        color: Config.colors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
              Row(
                children: [
                  Image.asset(
                    asset,
                    width: 300,
                    height: 350,
                  ),
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: price + " ",
                          style: TextStyle(
                              color: Color(0xFF28C435),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: "brandgro"),
                        ),
                        TextSpan(
                          text: devise,
                          style: TextStyle(
                              color: Color(0xFF0B6D23),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: "brandgro"),
                        ),
                      ],
                    ),
                  ),
                  Stack(alignment: AlignmentDirectional.center, children: [
                    Text(
                      oldPrice + "Fcfa",
                      style: Config.style.titleStyle.copyWith(
                          fontSize: 25.0,
                          color: Color(0xFFF12C25),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      color: Color(0xFF3B1211),
                      width: 90,
                      height: 4,
                    )
                  ]),
                ],
              ),
              Center(
                child: Text(
                  "T-SHIRT 70%-cotton 30%-elastique",
                  style: TextStyle(
                      color: Color(0xFF110FA3),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: "brandgro"),
                ),
              ),
              Center(
                child: CButton(
                  height: 20,
                  title: "J'achete",
                  onPressed: () {
                    route(context, PaymentScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
