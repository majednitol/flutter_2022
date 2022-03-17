import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Alert'),
                    content: Text("this is simple alert dialog"),
                    actions: [
                      ElevatedButton(
                          child: Text("ok"),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  );
                });
          },
          child: Text("Alert"),
        ),
      ),
    );
  }
}
