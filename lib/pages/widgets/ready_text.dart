import 'package:flutter/material.dart';

class ReadyText extends StatelessWidget {
  const ReadyText({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(
          width: 24,
        ),
        Text(
          text1,
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 25,
            color: Color(0xff252B5C),
          ),
        ),
        Text(
          text2,
          style: const TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(0xff252B5C)),
        ),
      ],
    );
  }
}
