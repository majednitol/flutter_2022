import 'package:flutter/material.dart';
import 'package:flutter_2022/page1.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "flutter",
    home: AnimatedSplashScreen(
      splash: "assets/a.png",
      nextScreen: Login(),
      splashTransition: SplashTransition.decoratedBoxTransition,
    ),
    debugShowCheckedModeBanner: false
    ,
  ));
}
