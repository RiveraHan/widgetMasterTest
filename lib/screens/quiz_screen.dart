import 'package:flutter/material.dart';
import 'package:widget_master/widgets/custom_quiz.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Quiz'),
      ),
      body: const CustomQuiz(),
    );
  }
}
