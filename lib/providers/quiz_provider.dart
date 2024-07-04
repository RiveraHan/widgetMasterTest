import 'package:flutter/material.dart';

class Question {
  final String questionText;
  final List<String> options;
  final String correctOption;
  String? selectedOption;

  Question({
    required this.questionText,
    required this.options,
    required this.correctOption,
    this.selectedOption,
  });
}

class QuizProvider with ChangeNotifier {
  final List<Question> _questions = [
    Question(
      questionText: '¿Cuál es la capital de Francia?',
      options: ['París', 'Londres', 'Madrid', 'Berlín'],
      correctOption: 'París',
    ),
    Question(
      questionText: '¿Cuál es el elemento químico con el símbolo H?',
      options: ['Hidrógeno', 'Helio', 'Hierro', 'Halógeno'],
      correctOption: 'Hidrógeno',
    ),
  ];

  List<Question> get questions => _questions;

  void selectOption(int index, String option) {
    _questions[index].selectedOption = option;
    notifyListeners();
  }
}
