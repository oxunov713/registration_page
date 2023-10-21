import 'package:flutter/material.dart';

class RegistrText extends StatelessWidget {
  const RegistrText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 24,
        ),
        Text(
          "Don’t have an account?  ",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15,
            color: Color(0xff252B5C),
          ),
        ),
        Text(
          "Register?",
          style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xff252B5C)),
        ),
      ],
    );
  }
}
