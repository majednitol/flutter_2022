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
        title: const Text('Modal bottom sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text('one'),
                          subtitle: Text("this is one"),
                          trailing: Icon(Icons.alarm),
                        ),
                        ListTile(
                          title: const Text('one'),
                          subtitle: Text("this is one"),
                          trailing: Icon(Icons.alarm),
                        ),
                        ListTile(
                          title: const Text('one'),
                          subtitle: Text("this is one"),
                          trailing: Icon(Icons.alarm),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text('click'),
        ),
      ),
    );
  }
}
