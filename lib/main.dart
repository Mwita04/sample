import 'package:flutter/material.dart';
import 'package:sample/home.dart';

void main() => runApp(
      MaterialApp(
        routes: {
          '/': ((context) => const Home()),
        },
      ),
    );
