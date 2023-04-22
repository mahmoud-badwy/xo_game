import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xo_game/controller/provider.dart';

class BoxItem extends StatelessWidget {
  final String letter;
  final int n;
  const BoxItem({super.key, required this.letter, required this.n});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {
        Provider.of<MyAnswers>(context, listen: false)
            .onPressedBox(n, name: letter);
      },
      child: Text(
        letter,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 90,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
