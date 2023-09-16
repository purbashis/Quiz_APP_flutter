import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choseAnswers});
  final List<String> choseAnswers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(40),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('You answered X  and Y questions correctly! '),
              SizedBox(
                height: 30,
              ),
              Text('List of answers and questions'),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Restart Quiz !'),
              )
            ])));
  }
}
