import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2022/de.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data;
  var url = ("http://reqres.in/api/users?page=2");
  Future getData() async {
    var response = await http.get(Uri.parse(url));
    setState(() {
      var decode = json.decode(response.body);
      data = decode["data"];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('json data feaching by http request'),
      ),
      body: Center(
        child: data == null
            ? Center(child: CircularProgressIndicator())
            : Container(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                        title: Text(data[index]["first_name"]),
                        subtitle: Text(data[index]["email"]),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailView(reciverData: data[index])),
                          );
                        });
                  },
                ),
              ),
      ),
    );
  }
}
