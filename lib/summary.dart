import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sample/booking.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
        backgroundColor: Colors.teal[400],
        elevation: 0,
        toolbarHeight: 80,
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 20),
        ],
      ),
      body: content(),
    );
  }
}

Widget content() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.teal[400],
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/taxi.png',
                width: 160,
                height: 160,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "\Kshs 70",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        locationInputField("xxxx, xxxxx", false),
        Text("/n"),
        locationInputField("xxxx, xxxxx", false),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Rate Your Last Trip',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RatingBar.builder(
            initialRating: 0,
            itemPadding: EdgeInsets.all(8),
            itemCount: 5,
            itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                ),
            onRatingUpdate: (value) {}),
        //*RatingBar Builder Uses flutter rating bar package
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.teal[400],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              'Rate',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
