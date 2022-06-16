import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input user example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this will be displayed on the screen
  late String _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('user input example'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => setState(() {
                _result = value;
              }),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              _result,
              style: const TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
