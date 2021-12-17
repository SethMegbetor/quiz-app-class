// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      width: 150,
      height: 40,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(answerText, style: const TextStyle(fontSize: 20),),
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }
}
