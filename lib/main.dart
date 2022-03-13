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
          title: const Text('Slider '),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "learn flutter",
              style: TextStyle(fontSize: currentvalue),
            ),
            Slider(
                activeColor: Colors.amber,
                inactiveColor: Colors.red,
                divisions: 5,
                label: currentvalue.round().toString(),
                min: 10,
                max: 50,
                value: currentvalue,
                onChanged: (value) {
                  setState(() {
                    currentvalue = value;
                    print(currentvalue);
                  });
                })
          ],
        ));
  }
}
