import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final VoidCallback resetQuiz;
  final int totalScore;

  const Result({super.key, required this.resetQuiz, required this.totalScore});

  String get resultText {
    return 'Total Score: $totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(resultText),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
