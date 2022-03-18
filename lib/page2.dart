import 'package:flutter/material.dart';
import 'package:flutter_2022/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            child: Text('2nd page pop'),
          ),
          ElevatedButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            }),
            child: Text('2nd page'),
          ),
        ],
      ),
    );
  }
}
