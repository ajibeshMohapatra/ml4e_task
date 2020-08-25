import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: RaisedButton(
              child: Text('Press to start'),
              elevation: 5,
              color: Colors.blue,
              onPressed: () {
                final startTime = DateTime.now();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new QuizPage(startTime)));
              },
            ),
          ),
        ),
      ),
    );
  }
}
