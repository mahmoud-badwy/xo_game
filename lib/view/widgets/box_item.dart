import 'package:flutter/material.dart';

class BoxItem extends StatelessWidget {
  final String letter;
  const BoxItem({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {},
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
