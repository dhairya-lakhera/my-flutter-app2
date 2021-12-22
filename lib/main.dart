import 'package:flutter/material.dart';

import './transaction.dart';

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
      title: 'Title1',
      amount: 20.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Title2',
      amount: 21.50,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text('First Card'),
                elevation: 5,
                color: Colors.blue,
              ),
            ),
            Card(
              child: Text('Second Card'),
              elevation: 5,
              color: Colors.red,
            ),
          ],
        ));
  }
}
