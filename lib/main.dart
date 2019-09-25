import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  // functions for the class
  void answerQuestions() {
    print('Answer chosen');
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
          Text(q[0]),
          Text(q[1]),
          RaisedButton(
            child: Text('Submit'),
            onPressed: () =>this.answerQuestions(),
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
