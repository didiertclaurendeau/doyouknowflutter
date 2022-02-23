import 'package:flutter/material.dart';

class Resultats extends StatelessWidget {
  final playerResult;
  final totalResult;
  final _recommenceFun;
  const Resultats(this.playerResult, this.totalResult, this._recommenceFun,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("Voici votre résultat :", style: TextStyle(fontSize: 20)),
      Container(
          child: Text("$playerResult sur $totalResult",
              style: TextStyle(
                  color: playerResult < 60 * totalResult / 100
                      ? Colors.red
                      : Colors.green))),
      ElevatedButton(
        child: Text("Recommencer"),
        onPressed: _recommenceFun,
      )
    ]);
  }
}
