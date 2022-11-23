import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['black', 'red', 'green'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['cat', 'dog', 'axolotl'],
    },
    {
      'questionText': 'What is your favorite peepeepoopoo?',
      'answers': ['dababy', 'bruh', 'aeugh'],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions remaining...");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : const Result(),
      ),
    );
  }
}
