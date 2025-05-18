import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Exercise extends StatelessWidget {
  const Exercise({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description:',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        Gap(10.0),
        Text(
            'A basic, multi-joint exercise performed on the floor. The main muscles involved are the pectorals and triceps. Indirectly loaded are the anterior deltoids, forearms, small muscles of the hand, lower back muscles, abs and quadriceps.')
      ],
    );
  }
}
