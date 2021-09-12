import 'package:flutter/material.dart';
import 'package:food_app/config/functions.dart';
import 'package:food_app/widgets/button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: CButton(
        height: 20,
        title: "J'achete",
        onPressed: () {
          route(context, PaymentScreen());
        },
      )),
    );
  }
}
