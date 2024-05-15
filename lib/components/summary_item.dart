import 'package:flutter/material.dart';
import 'package:quiz_app/components/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.item, {
    super.key,
  });

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          item['question_index'] as int,
          item['correct_answer'] == item['user_answer'],
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['question'] as String,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                item['user_answer'] as String,
                style: TextStyle(color: Colors.blue[900]),
              ),
              Text(
                item['correct_answer'] as String,
                style: const TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
