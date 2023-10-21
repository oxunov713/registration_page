import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
   ForgotPass({super.key, required this.showHide});

  bool showHide;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30, top: 20),
          child: GestureDetector(
            child: Text(
              "Forgot password?",
              style: TextStyle(
                  fontFamily: "Rale",
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xff1F4C6B)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 30, top: 20),
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "Show pasword",
              style: TextStyle(
                  fontFamily: "Rale",
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xff1F4C6B)),
            ),
          ),
        ),
      ],
    );
  }
}
