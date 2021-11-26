// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
   setState(() {
      questionIndex += 1;
   });
    print(questionIndex);
  }


  @override
  Widget build(BuildContext context) {
  

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('The title of my app')),
      ),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: () => print('Answer 2 chosen'),
          ),
          RaisedButton(
            child: const Text('Answer 1'),
            onPressed: () {
              print('Answer 3 chosen');
            },
          )
        ],
      ),
    ));
  }
}
