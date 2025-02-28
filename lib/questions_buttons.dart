import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton(
      {super.key, rew, required this.ontap, required this.txt});
  final void Function() ontap;
  final String txt;

  @override
  Widget build(context) {
    return ElevatedButton(onPressed: ontap, 
    style: ElevatedButton.styleFrom(
      
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      backgroundColor: const Color.fromARGB(222, 75, 1, 98),
      foregroundColor: const Color.fromARGB(222, 222, 218, 223),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
    )
    ,child: Text(txt,textAlign: TextAlign.center,),);
  }
}
