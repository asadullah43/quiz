import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  const Result(
      {super.key, required this.resultScore, required this.resetHandler});
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else {
      resultText = 'You are .... strange?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            textAlign: TextAlign.center,
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              resetHandler();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white, // Set background color
              textStyle:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
