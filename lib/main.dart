// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'black', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 5},
        {'text': 'pig', 'score': 3},
        {'text': 'lion', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'akple', 'score': 10},
        {'text': 'kokonte', 'score': 5},
        {'text': 'gari', 'score': 3},
        {'text': 'yakayaka', 'score': 10},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We dont have any more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Personality Quiz App')),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : const Result()),
    );
  }
}
