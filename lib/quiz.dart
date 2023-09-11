import 'package:adv_basics/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  // you can store widget in a variable .

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 74, 19, 170),
              Color.fromARGB(255, 135, 78, 235)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
