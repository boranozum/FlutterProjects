import 'models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'widgets/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}
