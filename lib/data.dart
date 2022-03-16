import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class Recived extends StatelessWidget {
  const Recived({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final providerdata = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('another page'),
      ),
      body: Center(
        child: Text(providerdata.value.toString(),style: TextStyle(fontSize:50,color:Colors.red),),
      ),
    );
  }
}
