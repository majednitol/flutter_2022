import 'dart:convert';

import 'package:flutter/material.dart';

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
  List<PostsModel> postList = [];
  Future<List<PostsModel>> getApi() async {
    final response = await http.get(Uri.parse(""));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        postList.add(PostsModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getApi(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
                itemCount: postList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Text("title",style: TextStyle(fontSize: 15),),SizedBox(height: 3,)
                      ],
                    ),
                  );
                });
          }
        });
  }
}
