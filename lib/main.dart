// packages
import 'package:flutter/material.dart';
// app related
import './question.dart';
import './answer.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  //List<Map<String, List<String>>>
  final qa = const [
    {
      'q': 'What\'s your favorite color?',
      'a': ['White', 'Black', 'Red', 'Blue']
    },
    {
      'q': 'What\'s your favorite animal?',
      'a': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
  ];

  // indexer
  int _qindex = 0;

  // functions for the class
  void answerQuestions() {
    if (_qindex < qa.length) {
      setState(() {
        // re-render the widget
        _qindex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // core widget that would be
        // initiated as soon as the application
        // initialized
        home: Scaffold(
      backgroundColor: Colors.white,
      body: _qindex < qa.length ? Column(
        children: <Widget>[
          Question(qa.elementAt(_qindex)['q']),
          ...(qa.elementAt(_qindex)['a'] as List<String>).map((a) {
            return Answer(a, answerQuestions);
          }).toList(),
        ],
      ): Text('Done'),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hello'),
      ),
    ));
  }
}
