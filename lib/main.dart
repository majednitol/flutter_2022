import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                value=!value;
              });
            },
            child: Icon(Icons.add),
          ),
      body: Center(
        child: AnimatedContainer(
          height: value == false ? 150 : 350,
          width: value == false ? 150 : 350,
          color: Colors.deepOrange,
          duration: Duration(seconds: 4),
        ),
      ),
    );
  }
}
