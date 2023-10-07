import 'package:flutter/material.dart';
import 'booking.dart';
import 'home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: '/booking',
        routes: {
          '/': ((context) => const Home()),
          '/booking': ((context) => const Booking()),
        },
      ),
    );
