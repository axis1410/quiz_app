import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My App')),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
