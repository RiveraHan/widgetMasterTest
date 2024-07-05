import 'package:flutter_test/flutter_test.dart';
import 'package:widget_master/providers/quiz_provider.dart';

void main() {
  group('QuizProvider Tests', () {
    test('Initial state should have correct question count', () {
      final provider = QuizProvider();
      expect(provider.questions.length, 2);
    });

    test('Selecting an option should update the selectedOption', () {
      final provider = QuizProvider();
      provider.selectOption(0, 'París');
      expect(provider.questions[0].selectedOption, 'París');
    });

    test('Selecting an option should notify listeners', () {
      final provider = QuizProvider();
      var notified = false;
      provider.addListener(() {
        notified = true;
      });

      provider.selectOption(0, 'París');
      expect(notified, true);
    });
  });
}
