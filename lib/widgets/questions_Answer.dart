// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class answers extends StatefulWidget {
  answers({super.key});
  @override
  State<answers> createState() => _answersState();
}

class _answersState extends State<answers> {
  int? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          RadioListTile(
            title: const Text('نَص الإجابة الأولي',textDirection: TextDirection.rtl),
            value: 1,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
        RadioListTile(
            title: const Text('نَص الإجابة الثانية',textDirection: TextDirection.rtl),
            value: 2,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
        RadioListTile(
            title: const Text('نَص الإجابة الثالثة',textDirection: TextDirection.rtl),
            value: 3,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
        RadioListTile(
            title: const Text('نَص الإجابة الرابعة',textDirection: TextDirection.rtl),
            value: 4,
            groupValue: selectedAnswer,
            onChanged: (value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          ),
      ],
    );
  }
}
