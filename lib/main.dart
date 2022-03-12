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
          title: const Text('textField'),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: TextField(
              // obscureText: true,
              // obscuringCharacter: "#",
              maxLength: 5,
              maxLines: 2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "number",
                  hintText: 'enter your number',
                  labelStyle: TextStyle(fontSize: 30),
                  prefix: Text('+880 '),
                  suffix: Text('@gmail.com'),
                  suffixIcon: Icon(Icons.chevron_right),
                  prefixIcon: Icon(Icons.phone)),
            ),
          ),
        ));
  }
}