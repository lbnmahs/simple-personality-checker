import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = [
      {
        'questionText': 'What sport do you play?',
        'answers': [
          {'text': 'Volleyball', 'score': 6},
          {'text': 'Basketball', 'score': 9},
          {'text': 'Baseball', 'score': 5},
          {'text': 'Soccer', 'score': 8}
        ]
      },
      {
        'questionText': 'What is your favourite snack?',
        'answers': [
          {'text': 'Biscuits', 'score': 6},
          {'text': 'Fruits', 'score': 7},
          {'text': 'Chips', 'score': 7},
          {'text': 'Ice cream', 'score': 10}
        ]
      },
      {
        'questionText': 'What is your favourite color?',
        'answers': [
          {'text': 'White', 'score': 9},
          {'text': 'Blue', 'score': 7},
          {'text': 'Red', 'score': 8},
          {'text': 'Black', 'score': 10}
        ]
      },
      {
        'questionText': 'What is your favourite animal?',
        'answers': [
          {'text': 'Lions', 'score': 8},
          {'text': 'Rabbits', 'score': 7},
          {'text': 'Snakes', 'score': 2},
          {'text': 'Tigers', 'score': 9}
        ]
      },
      {
        'questionText': 'What do you prefer?',
        'answers': [
          {'text': 'Series', 'score': 9},
          {'text': 'Anime', 'score': 8},
          {'text': 'Movies', 'score': 6},
          {'text': 'Animations', 'score': 7}
        ]
      }
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Personality Checker'),
      ),
      body: Quiz(
        answerQuestion: _answerQuestion,
        questionIndex: _questionIndex,
        questions: _questions,
      ),
    ));
  }
}
