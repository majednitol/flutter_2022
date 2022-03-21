import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showAlertDialog() {
    showDialog(
        context: context,
        barrierColor: Colors.red.withOpacity(0.3),
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: AlertDialog(
              title: Text("AlertDialog"),
              content: Text("this is a alert dialog"),
              actions: [
                TextButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    child: Text('ok'))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BackdropFilter'),
      ),
      body: Center(
        child: Container(
          child: FloatingActionButton(
            onPressed: showAlertDialog,
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
