import 'package:flutter/material.dart';

class AspctRatio extends StatefulWidget {
  const AspctRatio({ Key? key }) : super(key: key);

  @override
  State<AspctRatio> createState() => _AspctRatioState();
}

class _AspctRatioState extends State<AspctRatio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
      ),
      body: Container(),
    );
  }
}