import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({required this.questionList, required this.questionIndex, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionList[questionIndex]['questionText'] as String),
        ...(questionList[questionIndex]['answers'] as List<Map<String, Object>>) // ... is the spread operator which gets the elements of the list
            .map((answer) =>
                Answer(answer['text'] as String, () => answerQuestion(answer['score'] as int))) // map() returns an iterable
            .toList(), // toList() converts the iterable to a list
      ],
    );
  }
}
