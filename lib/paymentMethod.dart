// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'settings.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Methods',
        ),
        backgroundColor: Colors.teal[600],
        elevation: 8,
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
              splashColor: Colors.yellowAccent.shade100,
              splashRadius: 30,
              icon: Icon(Icons.settings),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      body: content(),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          paymentMethod('Cash', "assets/cash.png"),
          SizedBox(height: 30),
          paymentMethod('M-Pesa', "assets/mpesa.png"),
          SizedBox(height: 30),
          paymentMethod('Master Card', "assets/mastercard.png"),
          SizedBox(height: 30),
          paymentMethod('Visa', "assets/visa.png"),
          SizedBox(height: 30),
          paymentMethod('Paypal', "assets/paypal.png"),
          SizedBox(height: 40),
          Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.teal.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget paymentMethod(String title, String iconPath) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: ListTile(
      title: Text(title),
      // ignore: sized_box_for_whitespace
      leading: Container(
        // ignore: sort_child_properties_last
        child: Image.asset(iconPath),
        height: 50,
        width: 50,
      ),
      trailing: Icon(Icons.circle_outlined),
    ),
  );
}
