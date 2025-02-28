import 'package:flutter/material.dart';
import 'package:quizz_app/new1.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  // Widget ?activescreen; method 1
  // method 2,3
  var activeScreen = 'start-screen';
  // @override this is method 1
  // void initState() {
  //   activeScreen = StartScreen(setScreen);
  //   super.initState();
  // }

  void setScreen() {
    setState(() {
      //activeScreen = const QuestionsScreen(); and widget to activescreen initilization its like
      activeScreen = 'question-screen';
    });
  }

  void choosenAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget hakunnamatata = StartScreen(setScreen);

    if (activeScreen == 'question-screen') {
      hakunnamatata = QuestionsScreen(onSelectAnswers: choosenAnswer);
    }
    if (activeScreen == 'result-screen') {
      hakunnamatata =ResultScreen(chosenAnswer:selectedAnswer);
    }
    return (MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 65, 13, 155),
            Color.fromARGB(224, 83, 62, 118)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          // child: activeScreen=='start-screen' this is method 2
          // ? StartScreen(setScreen)
          // :const QuestionsScreen(),
          child: hakunnamatata,
        ),
      ),
    ));
  }
}
