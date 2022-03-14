import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
 final String message;
  Page1(this.message);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('another page'),
      ),
      body: Container(
          child: Center(
              child: Text(
        widget.message,
        style: TextStyle(fontSize: 30, color: Colors.red),
      ))),
    );
  }
}
