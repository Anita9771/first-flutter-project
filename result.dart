import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 20) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 30) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are different!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ), //Text
         FlatButton(child: Text(
         'Restart Quiz'
       ),
         textColor: Colors.green
        , onPressed: resetHandler
         )
        ],
      ),
    );
  }
}
