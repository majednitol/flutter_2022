import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "awsome app",
    home: HomePage(),
    // theme: ThemeData(
    //   primarySwatch: Colors.purple,
    // ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradient color in appBar and body '),
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.purple, Colors.orange]))),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.green])),
      ),
    );
  }
}