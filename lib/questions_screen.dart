import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/questions_buttons.dart';
import 'package:quizz_app/new1.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswers});
  final void Function(String answer) onSelectAnswers;

  @override
  State<QuestionsScreen> createState() {
    return _OuestionsScreenState();
  }
}

class _OuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void actionQuestion(String selectedAnswer) {
    widget.onSelectAnswers(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 224, 217, 217),
                fontWeight: FontWeight.bold,
              )

              // // )
              // style: const TextStyle(color: Color.fromRGBO(222, 222, 222,1),
              // fontWeight: FontWeight.bold)
              ,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.shuffleQuestions().map((item) {
              return QuestionButton(
                  ontap: () {
                    actionQuestion(item);
                  },
                  txt: item);
            }),
          ],
        ),
      ),
    );
  }
}
