import 'package:flutter/material.dart';
import './question.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % _questionList.length;
    });
  }

  var _questionList = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Page'),
        ),
        body: Column(
          children: [
            Question(_questionList[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
