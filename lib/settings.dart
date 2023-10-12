// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.2,
          maxChildSize: 1.0,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: ListView.builder(
                controller: scrollController,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
            );
          },
          expand: true,
        ),
      ),
    );
  }
}
