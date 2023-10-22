import 'package:flutter/material.dart';

import 'pages/login_option/login_option.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginOption(),
      debugShowCheckedModeBanner: false,
    );
  }
}
