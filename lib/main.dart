import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  // functions for the class
  void answerQuestions() {
    setState(() {
      qindex += 1;
    });
  }

  // indexer
  int qindex = 0;

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
          Text(q.elementAt(qindex)),
          RaisedButton(
            child: Text('Submit'),
            onPressed: () => this.answerQuestions(),
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hello'),
      ),
    ));
  }
}
