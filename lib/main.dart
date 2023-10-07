// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'booking.dart';
import 'home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: '/booking',
        routes: {
          '/': ((context) => Home()),
          '/booking': ((context) => Booking()),
        },
      ),
    );
