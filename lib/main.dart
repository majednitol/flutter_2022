import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_2022/page1.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/a.png", height: 300, width: 300),
            SizedBox(
              height: 100,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
