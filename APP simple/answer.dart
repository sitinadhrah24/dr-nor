import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //variable
  final String answerText;

  Answer(this.selectHandler, this.answerText); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //properties
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}



