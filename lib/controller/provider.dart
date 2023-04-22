import 'package:flutter/material.dart';

class MyAnswers with ChangeNotifier {
  String mainLetter = 'X';
  bool x = true;
  bool y = false;

  List<PlayerModel> answers = [
    PlayerModel(
      1,
      name: '',
    ),
    PlayerModel(
      2,
      name: '',
    ),
    PlayerModel(
      3,
      name: '',
    ),
    PlayerModel(
      4,
      name: '',
    ),
    PlayerModel(
      5,
      name: '',
    ),
    PlayerModel(
      6,
      name: '',
    ),
    PlayerModel(
      7,
      name: '',
    ),
    PlayerModel(
      8,
      name: '',
    ),
    PlayerModel(
      9,
      name: '',
    ),
  ];
  void onPressedBox(int n, {required String name}) {
    if (answers[n].isDone != true) {
      answers[n].isDone = true;
      answers[n].name = mainLetter;
      if (mainLetter == 'X') {
        mainLetter = 'Y';
      } else {
        mainLetter = 'X';
      }
      print('done $n == $mainLetter');
    } else {
      print('done $n');
    }

    notifyListeners();
  }
}

class PlayerModel {
  late String name;
  bool? isDone;
  late int id;
  PlayerModel(
    this.id, {
    required this.name,
    this.isDone,
  });
}
