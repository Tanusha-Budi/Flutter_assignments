import 'package:flutter/material.dart';

import './question.dart';
import './options.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> Questions;
  final Function answerQuestion;
  final int Count;

  Quiz(
      {required this.Questions,
      required this.answerQuestion,
      required this.Count});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(Questions[Count]['Questions'] as String),
        //Question
        ...(Questions[Count]['Options'] as List<Map<String, Object>>)
            .map((Answers) {
          return Options(() => answerQuestion(Answers['score']),
              (Answers['text'] as String));
        }).toList()
        //Options
      ],
    );
  }
}
