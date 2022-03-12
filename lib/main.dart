import 'package:flutter/material.dart';

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
          title: const Text('Stack'),
        ),
        body: Center(
          child: Stack(children: [
            Container(width: 300, height: 300, color: Colors.amber),
            Container(width: 300, height: 200, color: Colors.red),
            Container(width: 300, height: 100, color: Colors.green),
          ]),
        ));
  }
}