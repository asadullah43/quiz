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
  final questions = const [
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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
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
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answers) {
              return Answer(
                answerQuestion: answerQuestion,
                answerText: answers,
              );
            })
          ],
        ),
      ),
    );
  }
}
