// it works only browser not emulator

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Tooltip'),
        ),
        body: Center(
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {},
                tooltip: "call",
              ),
              Tooltip(
                message: "container",
                child: Container(
                  height: 200,
                  width: 100,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ));
  }
}
