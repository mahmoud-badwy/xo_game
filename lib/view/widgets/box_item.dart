import 'package:flutter/material.dart';

class BoxItem extends StatelessWidget {
  final String letter;
  const BoxItem({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (1 / 3.5),
      height: MediaQuery.of(context).size.width * (1 / 3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.red,
      ),
      alignment: Alignment.center,
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
