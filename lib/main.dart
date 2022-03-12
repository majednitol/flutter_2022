// ignore_for_file: deprecated_member_use

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
          title: const Text('Card and gridview'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.orange),
              Container(width: 100, height: 100, color: Colors.purple),
            ],
          ),
        )

        // Center(
        //   child: Card(
        //     child: Container(
        //       height: 200,
        //       width: 200,
        //     ),
        //     elevation: 10,
        //     shape: const RoundedRectangleBorder(
        //         borderRadius:
        //             BorderRadius.only(bottomLeft: Radius.circular(20))),
        //   ),
        // )
        );
  }
}