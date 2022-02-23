import 'package:flutter/material.dart';

import 'models/questions.dart';
import 'widgets/questionnaire.dart';
import 'widgets/resultats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your applica
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vous connaissez Flutter?',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Vous connaissez Flutter?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _testDebut = false;
  var _questionCourant = 0;
  var _pointTotal = 0;

  _reponseAQuestion(int reponseId) {
    print("Recu reponse $reponseId");
    setState(() {
      if (reponseId + 1 == listeDeQuestions[_questionCourant]["reponse"]) {
        _pointTotal += listeDeQuestions[_questionCourant]["point"] as int;
        print("Point actuel $_pointTotal");
      }
      _questionCourant++;
    });
  }

  void _recommenceTest() {
    setState(() {
      _testDebut = false;
      _questionCourant = 0;
      _pointTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            //Spacer(),
            Text("$_questionCourant/${listeDeQuestions.length}"),
          ],
        ),
      ),
      body: Center(
        child: (_testDebut)
            ? (_questionCourant < listeDeQuestions.length)
                ? Questionnaire(_questionCourant, _reponseAQuestion)
                : Resultats(_pointTotal, listeDeQuestions.length,
                    _recommenceTest) //Resultats(_pointTotal, listeDeQuestions.fold(0, (previousValue, element) => previousValue! + element["point"] as int))
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Debut ici"),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _testDebut = true;
                      });
                    },
                    child: Text("Debuut le test"),
                  ),
                ],
              ),
      ),
    );
  }
}
