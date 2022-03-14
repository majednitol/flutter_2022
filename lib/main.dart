import 'package:flutter/material.dart';
import 'package:flutter_2022/page1.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
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
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text('majedur rahman'),
            accountEmail: Text('majed7@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text('D'),
            ),
            decoration: BoxDecoration(color: Colors.red),
            otherAccountsPictures: [
              CircleAvatar(child: Text('H')),
              CircleAvatar(child: Text('H')),
            ],
          ),
          ListTile(
            title: Text('page 1'),
            trailing: Icon(Icons.arrow_forward_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
          ),
          ListTile(
            title: Text('page 1'),
            trailing: Icon(Icons.arrow_forward_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
          ),
          ListTile(
            title: Text('page 1'),
            trailing: Icon(Icons.arrow_forward_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
          ),
        ]),
      ),
    );
  }
}
