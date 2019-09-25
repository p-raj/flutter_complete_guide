// packages
import 'package:flutter/material.dart';
// app related
import './quiz.dart';
import './result.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  //List<Map<String, List<String>>>
  final _qa = const [
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
  void _answerQuestions() {
    if (_qindex < _qa.length) {
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
      body: _qindex < _qa.length
          ? Quiz(_qa, _answerQuestions, _qindex)
          : Result(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hello'),
      ),
    ));
  }
}
