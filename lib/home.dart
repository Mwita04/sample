// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        SizedBox(
          height: 45,
        ),
        Container(
          width: double.infinity,
          height: 300,
          child: Image.asset('assets/taxi.png'),
        ),
        Text(
          'E-Hailing Service',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Welcome! Take a ride to your destination with the cheapest fare',
            style: TextStyle(
              //fontWeight: FontWeight.bold,
              fontSize: 30,
              //fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.35),
                  spreadRadius: 5,
                  blurRadius: 7,
                  blurStyle: BlurStyle.inner,
                  offset: Offset(0, 3),
                ),
              ]),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                '+254-XXXXXXXXX',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.amber[600],
            borderRadius: BorderRadius.circular(20),
            /*  boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.35),
                  spreadRadius: 5,
                  blurRadius: 7,
                  blurStyle: BlurStyle.inner,
                  offset: Offset(0, 3),
                ),
              ]*/
          ),
          child: Center(
            child: Text(
              'Book A Ride',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'More',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
