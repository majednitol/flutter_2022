import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
      ),
      body: ListView(children: const [
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
        ListTile(
          title: Text("Fluttter App Development"),
          subtitle: Text("Learn more earn more"),
          leading: CircleAvatar(
            child: Icon(Icons.account_circle_rounded),
          ),
          trailing: Icon(Icons.camera),
        ),
      ]),
    );
  }
}
