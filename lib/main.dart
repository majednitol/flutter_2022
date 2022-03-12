import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const SnackBarPage(),
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
  ));
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('Yay! A SnackBar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Show SnackBar'),
          ),
        ));
  }
}
