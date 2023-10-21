import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 330,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xff234F68),
      ),
      child: Center(
        child: Text(
          "Your $text is incorrect",
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
