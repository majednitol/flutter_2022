import 'package:flutter/material.dart';
import 'package:flutter_2022/main.dart';

class Page3 extends StatelessWidget {
const Page3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (() {
          // next page there ager page a pire asha jay na
          Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (context) => HomePage()),
           );
        }),child: Text('3rd page'),),
      ),
    );
  }
}