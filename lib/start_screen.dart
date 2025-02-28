import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  
  final void Function()  startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/pic1.png', width: 200, height: 300,
          color: const Color.fromARGB(151, 239, 234, 234),),
          // Opacity( //using opacity is inefficient way so we use to change the rgb values of the image
          //   opacity: 0.6,
          //   child: Image.asset('assets/pic1.png', width: 200, height: 300)),
          const SizedBox(height: 40),
          const Text(
            'Learn Flutter in a FunnyWay :|',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white, // Fixed this line
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz',)
              
              
            ,
          ),
        ],
      ),
    );
  }
}
