// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking"),
        backgroundColor: Colors.teal[600],
        elevation: 8,
        toolbarHeight: 60,
      ),
      body: content(context),
    );
  }

  Widget content(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          locationInputField("From?", false),
          SizedBox(
            height: 20,
          ),
          locationInputField("To?", false),
          SizedBox(
            height: 30,
          ),
          Text(
            "History",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          locationInputField("Masaba", true),
          SizedBox(
            height: 20,
          ),
          locationInputField("Ikerege", true),
          SizedBox(
            height: 20,
          ),
          locationInputField("Kehancha", true),
          SizedBox(
            height: 20,
          ),
          locationInputField("Maeta", true),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: (() => Navigator.of(context).pushNamed('/paymentMethod')),
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.teal[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  "Confirm booking",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget locationInputField(String title, bool isHistory) {
  return Container(
    height: 60,
    width: 350,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3))
        ]),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            isHistory
                ? Icon(
                    Icons.location_on,
                    color: Colors.green,
                  )
                : Icon(
                    Icons.location_searching_outlined,
                    color: title.contains('From') ? Colors.grey : Colors.blue,
                  ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: isHistory ? FontWeight.normal : FontWeight.bold,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
