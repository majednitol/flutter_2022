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
  var currentvalue = "choice one";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DropDownButton'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentvalue),
            DropdownButton(
              items: const [
                DropdownMenuItem(value: 'One', child: Text('one')),
                DropdownMenuItem(value: 'Two', child: Text('Two')),
                DropdownMenuItem(value: 'Three', child: Text('Three'))
              ],
              onChanged: (value) {
                setState(() {
                  currentvalue = value.toString();
                });
              },
            )
          ],
        )));
  }
}
