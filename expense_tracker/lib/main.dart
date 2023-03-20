import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Container(
                width: double.infinity,
                child: Text('CHART!'),
              ),
              elevation: 5,
              color: Colors.blue,
            ),
            Card(
                child: Column(
                    children: transactions
                        .map((e) => Card(
                              child: Row(children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.purple, width: 2)),
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    '\$' + e.amount.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.purple),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e.title,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Text(DateFormat.yMMMd().format(e.date),
                                        style: TextStyle(color: Colors.grey)),
                                  ],
                                )
                              ]),
                            ))
                        .toList())),
          ],
        ));
  }
}
