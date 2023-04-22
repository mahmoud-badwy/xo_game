import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xo_game/controller/provider.dart';
import 'package:xo_game/view/widgets/box_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAnswers>(context, listen: false);
    final provider2 = Provider.of<MyAnswers>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('XO Game'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                ),
                itemBuilder: (context, index) {
                  return const BoxItem(letter: 'X');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
