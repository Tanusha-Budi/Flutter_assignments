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
  bool showText = false;

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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Show Text",
                  style: TextStyle(fontSize: 20),
                ),
                Switch(
                    value: showText,
                    onChanged: (val) {
                      setState(() {
                        showText = val;
                      });
                    })
              ]),
              SizedBox(
                width: 350,
                child: TextField(
                    onChanged: (value) => setState(() {
                          _result = value;
                        }),
                    decoration:
                        const InputDecoration(border: OutlineInputBorder())),
              ),
              const SizedBox(
                height: 30,
              ),
              if (showText)
                Text(
                  _result,
                  style: const TextStyle(fontSize: 30),
                )
            ],
          ),
        ));
  }
}
