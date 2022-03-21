

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(children: [
        TextField(),
        TextField(),
        ElevatedButton(onPressed: (() {
          
        }), child: Text("Login"))
      ],)
    );
  }
}