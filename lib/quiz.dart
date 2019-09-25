import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final _qa;
  final Function _f;
  final int _i;

  Quiz(this._qa, this._f, this._i);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_qa.elementAt(_i)['q']),
          ...(_qa.elementAt(_i)['a'] as List<String>).map((a) {
            return Answer(a, this._f);
          }).toList()
      ],
      
    );
  }
}