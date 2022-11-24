import './result.dart';
import './quiz.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 7},
        {'text': 'Blue', 'score': 1},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 100},
        {'text': 'Dog', 'score': 4},
        {'text': 'Rat', 'score': 0},
        {'text': 'Axolotl', 'score': 10}
      ],
    },
    {
      'questionText': 'What is your favorite peepeepoopoo?',
      'answers': [
        {'text': 'ligma', 'score': 10},
        {'text': 'ligma', 'score': 10},
        {'text': 'ligma', 'score': 10},
        {'text': 'ligma', 'score': 10},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {});

    _questionIndex = 0;
    _totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
