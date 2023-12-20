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
          title: const Text('Stack and positioned'),
        ),
        body: Center(
          child: Stack(
            children: [
              Container(width: 300, height: 300, color: Colors.red),
              Container(width: 300, height: 200, color: Colors.orange),
              Container(width: 300, height: 100, color: Colors.blue),
              Positioned(
                top: 40,
                left: 50,
                child: Container(
                  width: 100,
                  height: 50,
                  color: Colors.purple,
                  child: const Center(
                      child: Text(
                    "positioned",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ));
  }
}
