import 'package:flutter/material.dart';
import 'package:note_app/screens/note_list.dart';

void main() {
  runApp(NoteApp()); //call my widget
}

class NoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NoteList(),
    );
  }
}
