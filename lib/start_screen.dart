import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz; //startQuiz parameter or argument neoa hoise jar type hoche function, void mane retun korbe na

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opacity(
        //     opacity: 0.5,
        //     child: Image.asset('assets/images/flutter.png',
        //       width: 200,)
        // ),
        Image.asset(
          'assets/images/flutter.png',
          width: 200,
          color: Colors.white24,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('Learn flutter the fun way',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )),
        const SizedBox(
          height: 25,
        ),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz')),
      ],
    ));
  }
}
