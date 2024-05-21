import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  const Answer(
      {required this.answerQuestion,
      answer,
      super.key,
      required this.answerText});

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
        child: Text(answerText),
      ),
    );
  }
}
