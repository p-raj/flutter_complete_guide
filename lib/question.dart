import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _qText;

  Question(this._qText);
  
  @override
  Widget build(BuildContext context) {
    return Container (
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        this._qText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28
        ),
      )
    );
  }
}