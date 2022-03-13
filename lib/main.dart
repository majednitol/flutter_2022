// problem this topic

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Transform.rotate(
                angle: pi / 4,
                child: Container(height: 100, width: 100, color: Colors.red))),
        SizedBox(
          height: 100,
        ),
        Center(
            child: Transform.scale(
                scale: 2.5,
                child: Container(height: 100, width: 100, color: Colors.red))),
        SizedBox(
          height: 100,
        ),
        Center(
            child: Transform.translate(
                offset: Offset(20, 60),
                child: Container(height: 100, width: 100, color: Colors.red))),
      ],
    );
  }
}
