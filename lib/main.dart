import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.deepOrange),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated crossfade'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
              firstChild: Container(
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          check = false;
                        });
                      },
                      child: Text('sign in'),
                    ),
                  )),
              secondChild: Center(child: Text('Create',style: TextStyle(color: Colors.red,fontSize: 50),)),
              crossFadeState:
                  check ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 1))
        ],
      ),
    );
  }
}
