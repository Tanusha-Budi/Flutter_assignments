import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(id: 'ts1', title: 'Jeans', amount: 1500, date: DateTime.now()),
    Transactions(
        id: 'ts2', title: 'New mobile', amount: 24897, date: DateTime.now())
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
            Widget>[
          Container(
            width: double.infinity,
            child: Card(child: Text('Chart 1'), color: Colors.blue),
          ),
          Card(
              elevation: 7,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(decoration: InputDecoration(labelText: 'Title')),
                    TextField(decoration: InputDecoration(labelText: 'Amount')),
                    TextButton(
                      onPressed: () {},
                      child: Text('Add Transaction'),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                      ),
                    )
                  ],
                ),
              )),
          Column(
              children: transactions.map((ts) {
            return Card(
                child: Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                padding: EdgeInsets.all(5),
                child: Text(
                  '\u20B9${ts.amount}'.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      ts.title,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat.yMMMd().format(ts.date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ])
            ]));
          }).toList())
        ]));
  }
}
