import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          shape: const StadiumBorder(),
        ),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.orange[50],
          ),
        ),
      ),
    );
  }
}
