import 'package:flutter/material.dart';

class MyAnswers with ChangeNotifier {
  String mainLetter = 'X';
  bool player = true;

  List<dynamic> answers = [];
  void onPressedBox(int n) {
    notifyListeners();
  }
}
