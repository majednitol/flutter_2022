import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // create TimeOfDay variable
  TimeOfDay _timeOfDay = TimeOfDay(hour: 0, minute: 00); // 12:00

  // show time picker method
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // display the chosen time
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 50),
            ),

            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 50),
            ),

            // button
            MaterialButton(
              onPressed: _showTimePicker,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('PICK TIME',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: _showTimePicker,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('PICK date',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
