import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedAnswer;
  final String answerText;

  Answer(this.selectedAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
          onPressed: selectedAnswer,
          child: Text(answerText,
              style: const TextStyle(fontSize: 20, color: Colors.white)),
        ));
  }
}
