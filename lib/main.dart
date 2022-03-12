import 'package:flutter/material.dart';
import 'package:flutter_2022/Pages/page2.dart';
import 'package:flutter_2022/pages/page1.dart';
import 'package:flutter_2022/pages/page3.dart';

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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('TabBar'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.notification_important),
                ),
                Tab(
                  icon: Icon(Icons.message),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [Page1(),

             Page2(), 
             Page3()],
          )),
    );
  }
}
