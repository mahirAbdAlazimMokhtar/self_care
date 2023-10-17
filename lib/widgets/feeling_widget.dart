import 'package:flutter/material.dart';
import 'package:self_care/utils/constants.dart';

class FeelingWidget extends StatelessWidget {
  FeelingWidget({super.key, required this.emoji, required this.title});

  String emoji;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Constants.grey,
            shape: BoxShape.circle,
          ),
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        const SizedBox(height: 10),
        Text(title, style: const TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }
}
