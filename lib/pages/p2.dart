import 'package:flutter/material.dart';

class P2 extends StatelessWidget {
const P2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.deepPurple,
      child: Center(child: Text("Notification",style: TextStyle(color: Colors.white,fontSize:50),)),
    );
  }
}