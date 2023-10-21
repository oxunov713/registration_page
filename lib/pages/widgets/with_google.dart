import 'package:flutter/material.dart';

class WithGoogle extends StatelessWidget {
  const WithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          "----------------------------------  OR  ----------------------------------",
          style: TextStyle(
            color: Color(0xffA1A5C1),
          ),
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 70,
              width: 160,
              decoration: BoxDecoration(
                color: Color(0xffF5F4F8),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Center(
                child: Image(
                  height: 28,
                  width: 28,
                  image: AssetImage("assets/icons/google.png"),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 160,
              decoration: BoxDecoration(
                color: Color(0xffF5F4F8),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Center(
                child: Image(
                  height: 28,
                  width: 28,
                  image: AssetImage("assets/icons/facebook.png"),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
