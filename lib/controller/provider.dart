import 'package:flutter/material.dart';

class MyAnswers with ChangeNotifier {
  String mainLetter = 'X';

  bool player = true;

  List<dynamic> answers = [];
  void onPressedBox(int n) {
    if (!answers.contains(n)) {
      if (player) {
        answers.addAll([true, n]);
        mainLetter = 'Y';
        player = false;
        print(answers);
      } else {
        answers.addAll([false, n]);
        mainLetter = 'X';
        player = true;
        print(answers);
      }
    }

    notifyListeners();
  }
}
