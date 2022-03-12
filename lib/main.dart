import 'package:flutter/material.dart';
import 'package:flutter_2022/Pages/page1.dart';


void main() {
  runApp(MaterialApp(
    title: "awsome app",
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HERO ANIMATION'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: const Hero(tag: 'show', child: Icon(Icons.add, size: 50)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1()));
              },
            ),
          ),
        ));
  }
}