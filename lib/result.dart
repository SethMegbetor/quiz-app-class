import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

String get resultPhrase{
  String resultText;
  if(resultScore <= 8){
    resultText = 'grade A you are awesome \n your total score is:  $resultScore';
  }else if(resultScore <= 12){
    resultText = 'Pretty likeable grade B \n your total score is:  $resultScore';
  }else if(resultScore <= 16){
    resultText = 'You are ... strange? grade C \n your total score is:  $resultScore';
  }else{
    resultText = 'You are so bad! grade D \n your total score is:  $resultScore';
  }
  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(resultPhrase,),
          TextButton(
            child: Text('Restart Quiz'),
            style: TextButton.styleFrom(
              primary: Colors.orange,
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
