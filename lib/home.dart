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
          height: 45,
        ),
        SizedBox /*replaces container*/ (
          width: double.infinity,
          height: 300,
          child: Image.asset('assets/taxi.png'),
        ),
        const Text(
          'E-Hailing Service',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
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
        const SizedBox(
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
                  offset: const Offset(0, 3),
                ),
              ]),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                '+254-XXXXXXXXX',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        GestureDetector(
          onTap: (() => Navigator.of(context).pushNamed('/booking')),
        ),
        Center(
          child: Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.teal[300],
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
