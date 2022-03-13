import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.amber),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selected ? "checked" : "unchecked",
              style: const TextStyle(fontSize: 30),
            ),
            Checkbox(
                value: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
