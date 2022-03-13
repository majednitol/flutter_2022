import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.red),
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
        title: const Text(' ExpansionTile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExpansionTile(
                title: const Text('majedRahman7@gmail.com'),
                subtitle: const Text('gmail account'),
                leading: const Icon(Icons.account_circle_rounded),
                trailing: const Icon(Icons.download),
                children: [
                  Container(width: 300, height: 300, color: Colors.red)
                ],
              ),
              ExpansionTile(
                title: const Text('majedRahman7@gmail.com'),
                subtitle: const Text('gmail account'),
                leading: const Icon(Icons.account_circle_rounded),
                trailing: const Icon(Icons.download),
                children: [
                  Container(width: 300, height: 300, color: Colors.red)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
