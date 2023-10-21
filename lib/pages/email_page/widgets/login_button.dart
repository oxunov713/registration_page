import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  LogInButton({super.key, required this.errorText});

  bool errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ElevatedButton(
          onPressed: !errorText ? null : () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(300, 70),
            backgroundColor: const Color(0xff8BC83F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
