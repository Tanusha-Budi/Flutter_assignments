import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String QuestionText;

  Question(this.QuestionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: (Text(
          QuestionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        )));
  }
}
