import 'package:flutter/material.dart';

import 'Pages/page1.dart';
import 'Pages/page2.dart';
import 'pages/page3.dart';
import 'pages/page4.dart';


void main() {
  runApp(MaterialApp(
    title: "awsome app",
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentindex = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: ("message"),
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: ("call"),
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_important),
                label: ("notification"),
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ("home"),
                backgroundColor: Colors.amber),
          ],
          currentIndex: _currentindex,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
        body: Center(
          child: pages[_currentindex],
        ));
  }
}