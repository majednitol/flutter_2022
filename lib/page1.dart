import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
 final String message;
  Page1(this.message);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('another page'),
      ),
      body: Center(
        child: Container(
          child: Text(widget.message),
        ),
      ),
    );
  }
}
