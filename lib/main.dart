import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Lion', 'Elephant', 'Snake']
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['max', 'asif taj', 'Angila', 'Ravaan']
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
          centerTitle: true,
        ),
        body: Column(
          children: [
           Question(questions[questionIndex]['questionText'] as String),
            Answer(
              answerQuestion,
            ),
            Answer(
              answerQuestion,
            ),
            Answer(
              answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
