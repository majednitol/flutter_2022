// it works only browser not emulator

import 'package:flutter/material.dart';

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
          title: Text('DataTable'),
        ),
        body: Center(
          child: DataTable(
            columns: [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Age")),
              DataColumn(label: Text("University")),
              DataColumn(label: Text("Id")),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("majed")),
                DataCell(Text("21")),
                DataCell(Text("Diu")),
                DataCell(Text("708")),
              ]),
              DataRow(cells: [
                DataCell(Text("majed")),
                DataCell(Text("21")),
                DataCell(Text("Diu")),
                DataCell(Text("708")),
              ]),
              DataRow(cells: [
                DataCell(Text("majed")),
                DataCell(Text("21")),
                DataCell(Text("Diu")),
                DataCell(Text("708")),
              ])
            ],
          ),
        ));
  }
}
