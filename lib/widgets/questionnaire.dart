import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "../models/questions.dart";

class Questionnaire extends StatelessWidget {
  final _questionaafficher;
  final _reponseHandle;

  const Questionnaire(this._questionaafficher, this._reponseHandle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _reponses = [];

    for (var i = 0;
        i <
            (listeDeQuestions[_questionaafficher]["Choix"] as List<String>)
                .length;
        i++) {
      var _question =
          (listeDeQuestions[_questionaafficher]["Choix"] as List<String>)[i];
      _reponses.add(
        ElevatedButton(
            onPressed: () => _reponseHandle(i), child: Text(_question)),
      );
    }
    /*
          ElevatedButton(
              onPressed: null,
              child: Text()),
*/

    return Column(
      children: [
        Text(listeDeQuestions[_questionaafficher]["Question"] as String,
            style: TextStyle(fontSize: 20)),
        ..._reponses,
      ],
    );
  }
}
