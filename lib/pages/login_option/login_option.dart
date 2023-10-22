import 'package:flutter/material.dart';

import '../login_form/login_form.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({super.key});

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage("assets/images/img1.png"),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage("assets/images/img2.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage("assets/images/img3.png"),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage("assets/images/img4.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    "Ready to ",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 25,
                      color: Color(0xff252B5C),
                    ),
                  ),
                  Text(
                    "explore?",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xff252B5C)),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                child: const Column(
                  children: [
                    SizedBox(
                      height: 65,
                      width: 265,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xff8BC83F),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Continue with Email",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginForm(),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  const Text(
                    "----------------------------------  OR  ----------------------------------",
                    style: TextStyle(
                      color: Color(0xffA1A5C1),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 70,
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Color(0xffF5F4F8),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: const Center(
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
                        decoration: const BoxDecoration(
                          color: Color(0xffF5F4F8),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: const Center(
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
              ),
            ),
            const Expanded(
              flex: 1,
              child: Row(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
