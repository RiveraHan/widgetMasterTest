import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_master/providers/quiz_provider.dart';

class CustomQuiz extends StatelessWidget {
  const CustomQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (context, quizProvider, child) {
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: quizProvider.questions.length,
          itemBuilder: (context, index) {
            final question = quizProvider.questions[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question.questionText,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: question.options.map((option) {
                        final isSelected = question.selectedOption == option;
                        final isCorrect = question.correctOption == option;
                        return Container(
                          decoration: BoxDecoration(
                            color: isSelected
                                ? (isCorrect
                                    ? Colors.green[100]
                                    : Colors.red[100])
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                            border: isSelected
                                ? Border.all(
                                    color:
                                        isCorrect ? Colors.green : Colors.red,
                                    width: 2,
                                  )
                                : null,
                          ),
                          child: RadioListTile(
                            title: Text(option),
                            value: option,
                            groupValue: question.selectedOption,
                            onChanged: (value) {
                              quizProvider.selectOption(index, value!);
                            },
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 10),
                    if (question.selectedOption != null)
                      Text(
                        question.selectedOption == question.correctOption
                            ? '¡Correcto!'
                            : 'Incorrecto, la respuesta correcta es: ${question.correctOption}',
                        style: TextStyle(
                          color:
                              question.selectedOption == question.correctOption
                                  ? Colors.green
                                  : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
