import 'package:flutter/material.dart';

import '../utils/constants.dart';

class PracticeWidget extends StatelessWidget {
  PracticeWidget(
      {super.key,
      required this.color,
      required this.title,
      required this.emoji,
      required this.time});

  Color color;
  String emoji;
  String title;
  int time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Row(children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              color: Colors.white,
            ),
            child: Text(
              emoji,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
        Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '$time min',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ])
      ]),
    );
  }
}
