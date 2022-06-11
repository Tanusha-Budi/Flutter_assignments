import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final VoidCallback selectOption;
  final String answerText;

  Options(this.selectOption, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(onPrimary: Colors.white), // foreground
          child: Text(answerText, style: TextStyle(fontSize: 20)),
          onPressed: selectOption,
        ));
  }
}
