// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'booking.dart';
import 'home.dart';
import 'paymentMethod.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: '/paymentMethod',
        routes: {
          '/': ((context) => Home()),
          '/booking': ((context) => Booking()),
          '/paymentMethod': ((context) => PaymentMethod())
        },
      ),
    );
