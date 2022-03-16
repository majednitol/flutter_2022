import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  bool ? IsEligible;
  String ? eligibleMassage = "";
  void checkEligibility(int age) {
    if (age >= 18) {
      IsEligible = true;
      eligibleMassage = "You are eligible";
      notifyListeners();
    } else {
      IsEligible = false;
      eligibleMassage = "You are not eligible";
      notifyListeners();
    }
  }
}
