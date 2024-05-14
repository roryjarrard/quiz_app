import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home.dart';
import 'package:quiz_app/pages/questions.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home';
  final List<String> selectedAnswers = [];

  switchScreen() {
    setState(() {
      activeScreen = 'questions';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'home';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeScreen == 'home'
              ? HomeScreen(switchScreen)
              : QuestionsScreen(chooseAnswer),
        ),
      ),
    );
  }
}
