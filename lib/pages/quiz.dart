import 'package:flutter/material.dart';
import 'home.dart';
import 'questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home';

  switchScreen() {
    setState(() {
      activeScreen = 'questions';
    });
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
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
