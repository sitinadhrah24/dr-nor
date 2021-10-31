import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() { //create a state- attach state widget
    // TODO: implement createState
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> { //state class - treat as a widget
//Define a lists
    var questions = [
      {
        'questionText': 'What \'s your favourite colour?',
        'answers': ['Black', 'Red', 'Green', 'Blue'],
      },
      {
        'questionText': 'What \'s your favourite animal?',
        'answers': ['Cat', 'Tiger', 'Lion', 'Rabbit'],
      },
      {
        'questionText': 'Who \'s your favourite instructor?',
        'answers': ['Alan', 'David', 'Richard', 'Steven'],
      },
      {
        'questionText': 'What \'s your favourite dessert?',
        'answers': ['Cake', 'Ice Cream'],
      },
      {
        'questionText': 'What \'s your favourite app?',
        'answers': ['Twitter', 'Instagram', 'Facebook'],
      },
    ];

  var _questionIndex = 0;

  void _answerQuestion() {  //_ = private
    //print('Answer chosen!');
    setState(() { //method to set a state
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex); //print in debug console

  if( _questionIndex < questions.length){
    print('We have more questions!!');
  }else{
    print('No more question!!');
  }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ), //AppBar
        body:  _questionIndex < questions.length ? Column(
          children: [  //render collection to a question widget, thats why its a list.
            Question(
              questions[_questionIndex]['questionText'] as String,
            ), 
            ...(questions[_questionIndex]['answers'] as List<String>)
            .map((answer){
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : Center(child : Text('You did it!!'),),
      ),
    );
  }
}
