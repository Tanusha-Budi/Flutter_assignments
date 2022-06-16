import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ListView Example',
      home: ListViewWidget(),
    );
  }
}

class ListViewWidget extends StatefulWidget {
  @override
  State<ListViewWidget> createState() => ListViewWidgetState();
}

class ListViewWidgetState extends State<ListViewWidget> {
  List coursesList = [
    'Computer Science',
    'Computer Engineering',
    'Information Systems',
    'New Media',
    'Information Technology',
    'Information Science',
    'Mathematical Foundations',
    'Algorithms and Data Structures',
    'Artificial Intelligence',
    'Communication and security',
    'Computer architecture',
    'Computer graphics',
    'Databsaes',
    'Programming Languages',
    'Theory of computing',
    'Software Engineering',
    'Scientific computing'
  ];

  var index = 0;

  void courses() {
    setState(() {
      index = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of Courses')),
      body: Container(
        height: 650,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Card(
                        child: Row(children: <Widget>[
                      Text(
                        coursesList[index],
                        style: TextStyle(fontSize: 23),
                      ),
                    ])),
                  ),
                ]);
          },
          itemCount: coursesList.length,
        ),
      ),
    );
  }
}
