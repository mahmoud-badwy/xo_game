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
          Text(Provider.of<MyAnswers>(context).mainLetter),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(0);
                },
                child: BoxItem(
                  letter: provider.answers.isNotEmpty
                      ? provider.answers[0]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(1);
                },
                child: BoxItem(
                  letter: provider.answers.length > 2
                      ? provider.answers[2]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(2);
                },
                child: BoxItem(
                  letter: provider.answers.length > 4
                      ? provider.answers[4]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(3);
                },
                child: BoxItem(
                  letter: provider.answers.length > 6
                      ? provider.answers[6]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(4);
                },
                child: BoxItem(
                  letter: provider.answers.length > 8
                      ? provider.answers[8]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(5);
                },
                child: BoxItem(
                  letter: provider.answers.length > 10
                      ? provider.answers[10]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(6);
                },
                child: BoxItem(
                  letter: provider.answers.length > 12
                      ? provider.answers[12]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(7);
                },
                child: BoxItem(
                  letter: provider.answers.length > 14
                      ? provider.answers[14]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  provider.onPressedBox(8);
                },
                child: BoxItem(
                  letter: provider.answers.length > 16
                      ? provider.answers[16]
                          ? 'X'
                          : 'Y'
                      : '',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
