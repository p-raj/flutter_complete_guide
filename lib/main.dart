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
  // indexer
  int _qindex = 0;

  // functions for the class
  void answerQuestions() {
    setState(() {
      // re-render the widget
      _qindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> q;
    q = ['Hello', 'World'];

    return MaterialApp(
        // core widget that would be
        // initiated as soon as the application
        // initialized
        home: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Question(q.elementAt(_qindex)),
          Answer('Submit', this.answerQuestions),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hello'),
      ),
    ));
  }
}
