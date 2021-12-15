// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['blue', 'red', 'green', 'yellow']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['cat', 'dog', 'pig', 'cow']
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': ['pizza', 'burger', 'sushi', 'ramen']
      },
    {
        'questionText': 'What\'s your favorite sport?',
        'answers': ['soccer', 'basketball', 'tennis', 'football']
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Personality Quiz App')),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText'] as String),
        ...(questions[_questionIndex] ['answers']as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
        ],
        
    
      ),
    ));
  }
}