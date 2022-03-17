import 'package:flutter/material.dart';
import 'package:flutter_2022/pages/p1.dart';
import 'package:flutter_2022/pages/p2.dart';
import 'package:flutter_2022/pages/p3.dart';
import 'package:flutter_2022/pages/p4.dart';
import 'package:flutter_2022/pages/p5.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;
  var page = 0;
  final pages = [P1(), P2(), P3(), P4(), P5()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(microseconds: 600),
          onTap: (index) {
           setState(() {
              page = index;
           });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.notification_add),
            Icon(Icons.message),
            Icon(Icons.menu),
            Icon(Icons.favorite),
          ]),
          body:
    pages[page]
    );
    
  }
}
