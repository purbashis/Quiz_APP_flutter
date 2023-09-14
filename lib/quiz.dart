import 'package:adv_basics/questions_screen.dart';
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
  final List<String> selectedAnswer = []; //adding elements to existing list
  var activeScreen = 'start-screen';
  // you can store widget in a variable .
// @override
//   void initState() {
//     activeScreen = StartScreen(switchScreen);
//     super.initState();
//   }
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
  }

  @override
  Widget build(context) {
    // Widget screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      setState(() {
        screenWidget = QuestionsScreen(
          onSelectAnswer: chooseAnswer,
        );
      });
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 74, 19, 170),
              Color.fromARGB(255, 159, 120, 226)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
          //  child: activeScreen == 'start-screen'
          // ? StartScreen(switchScreen)
          // : const QuestionsScreen(),
          //ternary expression
        ),
      ),
    );
  }
}
