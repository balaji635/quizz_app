// import 'package:flutter/material.dart';

// class QuestionsSummary extends StatelessWidget {
//   const QuestionsSummary(this.summaryData, {super.key});
//   final List<Map<String, Object>> summaryData;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: summaryData.map((data) {
//       return Row(
//         children: [
//           Text(
//             ((data['question_index'] as int) + 1).toString(),
//           ),
//         Expanded(
//           child: Column(children: [
//             Text(data['question'] as String ),
//             const SizedBox(height: 5,),
//             Text(data['user_answer'] as String),
//             Text(data['user_answer'] as String),
          
          
              
//             ],),
//         )
//         ],
//       );
//     }).toList());
//   }
// }
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ((data['question_index'] as int) + 1 ).toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Your answer: ${data['user_answer'] as String}',
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Correct answer: ${data['correct_answer'] as String}',
                        style: const TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
