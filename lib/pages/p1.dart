import 'package:flutter/material.dart';

class P1 extends StatelessWidget {
const P1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.deepPurple,
      child: Center(child: Text("Home",style: TextStyle(color: Colors.white,fontSize:50),)),
    );
  }
}