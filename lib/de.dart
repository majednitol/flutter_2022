import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailView extends StatelessWidget {
  var reciverData;
  DetailView({this.reciverData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:CircleAvatar(
          radius: 100,
          child:Image.network(reciverData["avatar"])
        )
      ),
    );
  }
}

