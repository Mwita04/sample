// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Booking",
        ),
        backgroundColor: Colors.teal[300],
        elevation: 0,
        toolbarHeight: 70,
        //toolbarOpacity: 1,
        /* leading: IconButton(
          icon: Icon(Icons.keyboard_return_rounded),
          onPressed: () {},
        ),*/ // Adds a leading button
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          locationInputField("From?", false),
          const SizedBox(
            height: 20,
          ),
          locationInputField("To?", false),
          SizedBox(
            height: 30,
          ),
          Text(
            "History",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          locationInputField("Ntimaru Pefa ", true),
          SizedBox(
            height: 20,
          ),
          locationInputField("Kehancha Hospital ", true),
          SizedBox(
            height: 20,
          ),
          locationInputField("Kegonga ", true),
          SizedBox(
            height: 20,
          ),
          locationInputField("Ikerege ", true),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(28),
            ),
            child: Center(
              child: Text(
                "Confirm Booking",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget locationInputField(String title, bool isHistory) {
  return Container(
    height: 50,
    width: 380,
    decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ]),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            isHistory
                ? Icon(
                    Icons.location_on_outlined,
                    color: Colors.green,
                  )
                : Icon(
                    Icons.location_searching_outlined,
                    color: title.contains('From') ? Colors.grey : Colors.blue,
                  ),
            SizedBox(
              width: 50,
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
