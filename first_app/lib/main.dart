import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionList = [
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
            Text('The question!'),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
