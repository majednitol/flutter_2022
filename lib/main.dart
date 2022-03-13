import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentvalue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rich text '),
        ),
        body: Center(
          child: RichText(
              text: const TextSpan(
                  text: 'dont you have van account ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: [
                TextSpan(
                  text: "sign up",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                )
              ])),
        ));
  }
}
