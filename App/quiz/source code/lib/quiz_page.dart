import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

class QuizPage extends StatefulWidget {
  final DateTime _startTime;
  QuizPage(this._startTime);
  @override
  State<StatefulWidget> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<QuizPage> {
  static const _questions = [
    {
      'questionText': 'Howmany days do we have in a week ?',
      'answers': [
        {
          'text': '8',
          'score': 0,
        },
        {
          'text': '10',
          'score': 0,
        },
        {
          'text': '7',
          'score': 1,
        },
        {
          'text': '5',
          'score': 0,
        }
      ],
    },
    {
      'questionText': 'Howmany letters are there in english alphabet ?',
      'answers': [
        {
          'text': '30',
          'score': 0,
        },
        {
          'text': '26',
          'score': 1,
        },
        {
          'text': '25',
          'score': 0,
        },
        {
          'text': '29',
          'score': 0,
        }
      ],
    },
    {
      'questionText': 'When was NITRKL established ?',
      'answers': [
        {
          'text': '1959',
          'score': 1,
        },
        {
          'text': '1956',
          'score': 0,
        },
        {
          'text': '1953',
          'score': 0,
        },
        {
          'text': '1949',
          'score': 0,
        }
      ],
    },
    {
      'questionText': 'Who is president of India ?',
      'answers': [
        {
          'text': 'Pranav Mukharjee',
          'score': 0,
        },
        {
          'text': 'Ram Nath Kovind',
          'score': 1,
        },
        {
          'text': 'Narndra Modi',
          'score': 0,
        },
        {
          'text': 'None of these',
          'score': 0,
        }
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _onAnswerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                onAnswerQuestion: _onAnswerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz, widget._startTime),
      ),
    );
  }
}
