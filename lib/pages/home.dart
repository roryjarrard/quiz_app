import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            // Opacity(
            //   opacity: 0.6,
            //   child: Image.asset(
            //     'assets/images/quiz-logo.png',
            //     width: 250,
            //   ),
            // ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.quiz, color: Colors.white),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
