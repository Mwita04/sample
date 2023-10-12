// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        // ignore: sized_box_for_whitespace
        Container(
          width: double.infinity,
          height: 300,
          child: Image.asset('assets/taxi.png'),
        ),
        Text(
          "Boda-Boda Service",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.teal[600],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Twende Nyumbani!",
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ]),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "+254-XXXXXXXXX",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        GestureDetector(
          onTap: (() => Navigator.of(context).pushNamed('/booking')),
          child: Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.35),
                  spreadRadius: 5,
                  blurRadius: 7,
                  blurStyle: BlurStyle.inner,
                  offset: Offset(0, 3), 
                ),
              ],
            ),
            child: Center(
                child: Text(
              "Book a ride",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "More",
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
