import 'package:flutter/material.dart';
import 'package:flutter_2022/page1.dart';
import 'package:flutter_2022/page2.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    initialRoute: "/",
    routes: {
      "/first": (context) => Page1(),
      "/seond": (context) => Page2(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InitialRoute,Route,PushNamed,Push,pop"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
            
            Navigator.pushNamed(
              context,
              "/first",
            );
          }),
          child: Text('Homepage'),
        ),
      ),
    );
  }
}
