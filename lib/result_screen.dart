import 'package:flutter/material.dart';
import 'package:quizz_app/new1.dart';
import 'package:quizz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});
  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index':i,
        'question':questions[i],
        'correct_answer':questions[i].answers[0],
        'user_answer':chosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'You Answered X Questions out of Y Questions correctly !!'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            TextButton(
              child: const Text('this '),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
