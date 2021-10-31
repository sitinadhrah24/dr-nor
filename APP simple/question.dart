import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity, //properties
      margin: EdgeInsets.all(10), //10 px
      child: Text( //widget
        questionText,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
    // return Text(questionText);
  }
}