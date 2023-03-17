import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // Override the createState() method to return an instance of _MyAppState.
  @override
  State<MyApp> createState() => _MyAppState();
}

// This is the private State class that goes with MyApp.
// extends State<MyApp> is required for the State class to be recognized as a State class.
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });

    _totalScore = 0;
  }

  static const _questionList = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'White',
          'score': 1,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Rabbit',
          'score': 3,
        },
        {
          'text': 'Snake',
          'score': 11,
        },
        {
          'text': 'Elephant',
          'score': 5,
        },
        {
          'text': 'Lion',
          'score': 9,
        },
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First Page'),
            ),
            body: _questionIndex < _questionList.length
                ? Quiz(
                    questionList: _questionList,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion,
                  )
                : Result(resetQuiz: _resetQuiz, totalScore: _totalScore)));
  }
}
