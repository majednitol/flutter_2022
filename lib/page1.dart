import 'package:flutter/material.dart';
import 'package:flutter_2022/page2.dart';

class Page1 extends StatelessWidget {
const Page1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (() {
          Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => Page2()),
           );
        }),child: Text('ist page'),),
      ),
    );
  }
}