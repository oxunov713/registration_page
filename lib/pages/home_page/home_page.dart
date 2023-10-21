import 'package:flutter/material.dart';

import '../email_page/email_page.dart';
import '../widgets/image_card.dart';
import '../widgets/ready_text.dart';
import '../widgets/regist_text.dart';
import '../widgets/with_email.dart';
import '../widgets/with_google.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      ImageCard(path: "assets/images/img1.png"),
                      ImageCard(path: "assets/images/img2.png"),
                    ],
                  ),
                  Column(
                    children: [
                      ImageCard(path: "assets/images/img3.png"),
                      ImageCard(path: "assets/images/img4.png"),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: ReadyText(
                text1: "Ready to ",
                text2: "explore?",
              ),
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                child: const WithEmail(),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmailPage(),
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 3,
              child: WithGoogle(),
            ),
            const Expanded(
              flex: 1,
              child: RegistrText(),
            ),
          ],
        ),
      ),
    );
  }
}
