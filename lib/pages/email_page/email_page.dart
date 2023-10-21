import 'package:flutter/material.dart';

import '../../logic/email_logic.dart';
import '../widgets/ready_text.dart';
import '../widgets/regist_text.dart';
import '../widgets/with_google.dart';
import 'widgets/error_text.dart';

import 'widgets/login_button.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  bool _selectedEmail = true;
  bool _selectedPass = true;

  bool errorText = false;
  bool initText = true;
  bool showHide = false;

  String incorrectText = '';
  String text = "Show";

  late CustomValidation _validation;

  @override
  void initState() {
    super.initState();
    _validation = CustomValidation();
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BackButton(),
                ),
                const Image(image: AssetImage("assets/images/appbar.png")),
                const SizedBox(height: 5),
                const ReadyText(text1: "Let's ", text2: "Sign In"),
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
                  child: !initText ? ErrorText(text: incorrectText) : null,
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
                            errorText = _validation.isValidEmail(value);
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
                // EmailField(), //EmailFieldni ishlatish mumkin lekin setstate bo'lyatganda yangilanolmyapti
                //PasswordField() //PasswordFieldni ishlatish mumkin lekin setstate bo'lyatganda yangilanolmyapti
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
                            errorText = _validation.isValidPass(value);
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
                // ForgotPass(), bundayam setstate muammo
                const SizedBox(height: 30),
                LogInButton(errorText: errorText),
                const SizedBox(height: 20),
                const WithGoogle(),
                const SizedBox(height: 15),
                const RegistrText(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
