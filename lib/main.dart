import 'package:flutter/material.dart';
import 'package:flutter_2022/Pages/page1.dart';
import 'package:flutter_2022/Pages/page2.dart';
import 'package:flutter_2022/Pages/page3.dart';
import 'package:flutter_2022/Pages/page4.dart';


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
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('pageview'),
        ),
        body: PageView(
          controller: controller,
          children: const [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ));
  }
}