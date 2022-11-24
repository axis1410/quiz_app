import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  const Result(this.totalScore, this.resetHandler, {Key key}) : super(key: key);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (totalScore <= 30) {
      resultText = 'Noob lol';
    } else {
      resultText = 'You scored $totalScore';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: resetHandler,
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          ),
          child: const Text("Reset"),
        )
      ],
    ));
  }
}
