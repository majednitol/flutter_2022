import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  String message;
  Page1(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('another page'),
      ),
      body: Center(
        child: Container(
          child: Text(message),
        ),
      ),
    );
  }
}
