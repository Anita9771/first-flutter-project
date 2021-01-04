import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';


//void main() {
//runApp(AnnieApp());
//}

void main() => runApp(AnnieApp());

class AnnieApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnnieAppState();
  }
}

class _AnnieAppState extends State<AnnieApp> {
  final _questions = const [
  {'questionText': 'What\'s your birth month?',
  'answers': [
  {'text': 'January/February', 'score': 12},
  {'text': 'March/April', 'score': 10},
  {'text': 'May/June', 'score': 8},
  {'text': 'July/August', 'score': 6},
  {'text': 'September/October', 'score': 4},
  {'text': 'November/December', 'score': 2},

  ],
},
{'questionText': 'Who is your favourite person?',
'answers': [
{'text': 'Father', 'score': 1},
{'text': 'Mother', 'score': 2},
{'text': 'Brother', 'score': 3},
{'text': 'Sister', 'score': 4},
{'text': 'Lover', 'score': 5},
{'text': 'Friend', 'score': 6},
{'text': 'Spouse', 'score': 7},
],
},
{'questionText': 'What\'s your favorite rainbow color?',
'answers': [
{'text': 'Red', 'score': 4},
{'text': 'Orange', 'score': 3},
{'text': 'Yellow', 'score': 2},
{'text': 'Green', 'score': 1},
{'text': 'Blue', 'score': 5},
{'text': 'Indigo', 'score': 6},
{'text': 'Violet', 'score': 7},
],
},
];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });

  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Annie\'s First App',),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions
        )
              : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
