import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/home_page.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  final DateTime startTime;

  Result(this.resultScore, this.resetHandler, this.startTime);

  String get resultPhase {
    String resultText;
    if (resultScore == 4) {
      resultText = 'Great ! You have scored $resultScore';
    } else if (resultScore == 3) {
      resultText = 'Good Job ! You have scored $resultScore';
    } else if (resultScore == 2) {
      resultText = 'Nice ! You have scored $resultScore';
    } else if (resultScore == 1) {
      resultText = 'Poor ! You have scored $resultScore';
    } else {
      resultText = 'You have scored $resultScore';
    }
    return resultText;
  }

  final endTime = DateTime.now();
  String get time {
    int difference;
    String time;
    difference = endTime.difference(startTime).inSeconds;
    time = 'It took you $difference seconds';
    return time;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
              child: Text('Restart Quiz!'),
              textColor: Colors.blue,
              onPressed: () {
                // ignore: unnecessary_statements
                resetHandler;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => new HomePage()));
              }),
        ],
      ),
    );
  }
}
