import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Card Example')),
        backgroundColor: Colors.blue[100],
        body: CardWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300,
      height: 160,
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 15,
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'App is not responding',
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                'Do you want close it?',
                style: TextStyle(fontSize: 18),
              ),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    child: const Text('Wait'),
                    onPressed: () {/* ... */},
                  ),
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
