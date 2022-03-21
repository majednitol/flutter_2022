import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Kindacode.com',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription? subscription;
  Future checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      Fluttertoast.showToast(msg: "connected with mobile");
    } else if (connectivityResult == ConnectivityResult.mobile) {
      Fluttertoast.showToast(msg: "connected with wifi");
    } else {
      Fluttertoast.showToast(msg: "Not connected ");
    }
  }

// realtime connection checking
  @override
  void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((event) {
      checkConnection();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Connectivity'),
        ),
        body: Center(
            child: Container(
          child: ElevatedButton(
            onPressed: checkConnection,
            child: Text('check Connectivity'),
          ),
        )));
  }
}
