import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final String _a;
  final Function _f;

  Answer(this._a, this._f);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(this._a),
        onPressed: () => _f(),
      ),
    );
  }
}