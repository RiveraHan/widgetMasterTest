import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:widget_master/providers/quiz_provider.dart';
import 'package:widget_master/widgets/custom_quiz.dart';

void main() {
  group('CustomQuiz Widget Tests', () {
    testWidgets('Displays questions correctly', (WidgetTester tester) async {
      final quizProvider = QuizProvider();

      await tester.pumpWidget(
        ChangeNotifierProvider<QuizProvider>.value(
          value: quizProvider,
          child: const MaterialApp(
            home: Scaffold(
              body: CustomQuiz(),
            ),
          ),
        ),
      );

      expect(find.text('¿Cuál es la capital de Francia?'), findsOneWidget);
      expect(find.text('¿Cuál es el elemento químico con el símbolo H?'),
          findsOneWidget);
    });

    testWidgets('Selecting an option updates the provider',
        (WidgetTester tester) async {
      final quizProvider = QuizProvider();

      await tester.pumpWidget(
        ChangeNotifierProvider<QuizProvider>.value(
          value: quizProvider,
          child: const MaterialApp(
            home: Scaffold(
              body: CustomQuiz(),
            ),
          ),
        ),
      );

      await tester.tap(find.text('París'));
      await tester.pump();

      expect(quizProvider.questions[0].selectedOption, 'París');
    });

    testWidgets('Displays correct/incorrect indication',
        (WidgetTester tester) async {
      final quizProvider = QuizProvider();

      await tester.pumpWidget(
        ChangeNotifierProvider<QuizProvider>.value(
          value: quizProvider,
          child: const MaterialApp(
            home: Scaffold(
              body: CustomQuiz(),
            ),
          ),
        ),
      );

      await tester.tap(find.text('Londres'));
      await tester.pump();

      expect(find.text('Incorrecto, la respuesta correcta es: París'),
          findsOneWidget);

      await tester.tap(find.text('París'));
      await tester.pump();

      expect(find.text('¡Correcto!'), findsOneWidget);
    });
  });
}
