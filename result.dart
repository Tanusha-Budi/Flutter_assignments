import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetText;


  Result(this.resultScore, , this.resetText);

  String get resultPhrase {
    String resultText;
    if (resultScore == 40) {
      resultText = 'Outstanding!';
    } else if (resultScore == 30) {
      resultText = 'Keep it up !';
    } else if (resultScore == 20) {
      resultText = 'Can do better !';
    } else if (resultScore == 10) {
      resultText = 'Need to improve !';
    } else {
      resultText = 'Failed !';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child:  Column(children: [
          Text(resultPhrase,
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
        OutlinedButton(
          onPressed: resetText,
          child: Text(
            'Reset',
            style: TextStyle(fontSize: 25),
         ))
      ])
    );
  }
}
