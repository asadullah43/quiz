import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  const Answer(this.answerQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          answerQuestion();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white, // Set background color
          textStyle: const TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold), // Set text style
          // Adjust elevation
        ),
        child: const Text('Answer 1'),
      ),
    );
  }
}
