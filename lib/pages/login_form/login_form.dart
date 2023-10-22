import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _selectedEmail = true;
  bool _selectedPass = true;

  bool errorText = false;
  bool initText = true;
  bool showHide = false;

  String incorrectText = '';
  String text = "Show";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.all(8.0), child: BackButton()),
                const Image(image: AssetImage("assets/images/appbar.png")),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    SizedBox(width: 24),
                    Text(
                      "Let's ",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 25,
                        color: Color(0xff252B5C),
                      ),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff252B5C)),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.only(left: 24, bottom: 30),
                  child: Text(
                    "quis nostrud exercitation ullamco laboris nisi ut",
                    style: TextStyle(
                        color: Color(0xff53587A),
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Center(
                  child: !initText
                      ? Container(
                          height: 50,
                          width: 330,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff234F68),
                          ),
                          child: Center(
                            child: Text(
                              "Your $incorrectText is incorrect",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      : null,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: SizedBox(
                      height: 100,
                      width: 330,
                      child: Center(
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          onTap: () => setState(() {
                            _selectedEmail = false;
                            incorrectText = "email";
                          }),
                          onSubmitted: (value) => setState(() {
                            _selectedEmail = true;
                            errorText =
                                RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                                    .hasMatch(value);
                            initText = errorText;
                          }),
                          decoration: InputDecoration(
                              fillColor: const Color(0xffF5F4F8),
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffF5F4F8),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff8BC83F), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              prefixIcon: _selectedEmail
                                  ? const Icon(Icons.email_outlined)
                                  : null,
                              suffixIcon: !_selectedEmail
                                  ? const Icon(Icons.email_outlined)
                                  : null,
                              suffixIconColor: const Color(0xff252B5C),
                              prefixIconColor: const Color(0xff252B5C),
                              hintText: "Email"),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: SizedBox(
                      height: 100,
                      width: 330,
                      child: Center(
                        child: TextField(
                          obscureText: showHide,
                          onTap: () => setState(() {
                            _selectedPass = false;
                            incorrectText = "password";
                          }),
                          onSubmitted: (value) => setState(() {
                            _selectedPass = true;
                            errorText = RegExp(
                              r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=!]).{8,}$',
                            ).hasMatch(value);
                            initText = errorText;
                          }),
                          decoration: InputDecoration(
                              fillColor: const Color(0xffF5F4F8),
                              filled: true,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffF5F4F8),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff8BC83F), width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              prefixIcon: _selectedPass
                                  ? const Icon(Icons.lock_outlined)
                                  : null,
                              suffixIcon: !_selectedPass
                                  ? const Icon(Icons.lock_outlined)
                                  : null,
                              suffixIconColor: const Color(0xff252B5C),
                              prefixIconColor: const Color(0xff252B5C),
                              hintText: "Password"),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: GestureDetector(
                        child: const Text(
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
                      padding: const EdgeInsets.only(right: 30, top: 20),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            showHide = !showHide;
                            if (!showHide) text = "Hide";
                            if (showHide) text = "Show";
                          });
                        },
                        child: Text(
                          "$text pasword",
                          style: const TextStyle(
                              fontFamily: "Rale",
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xff1F4C6B)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
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
                ),
                const SizedBox(height: 20),
                Column(
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
                const SizedBox(height: 15),
                const Row(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
