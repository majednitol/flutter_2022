import 'package:flutter/material.dart';
class P3 extends StatelessWidget {
const P3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.deepPurple,
      child: Center(child: Text("Message",style: TextStyle(color: Colors.white,fontSize:50),)),
    );
  }
}