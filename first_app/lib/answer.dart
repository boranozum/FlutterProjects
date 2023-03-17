import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  
  // select handler is a function pointer
  final VoidCallback selectHandler;

  const Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
      ),
    );
  }
}
