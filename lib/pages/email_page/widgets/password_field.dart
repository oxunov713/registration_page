import 'package:flutter/material.dart';

import '../../../logic/email_logic.dart';


class PasswordField extends StatefulWidget {
  PasswordField({
    super.key,
    required this.selectedPass,
    required this.incorrectText,
    required this.errorText,
    required this.validation,
    required this.initText,
  });

  bool selectedPass;
  bool errorText;
  String incorrectText;
  bool initText;
  CustomValidation validation;

  @override
  State<PasswordField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: SizedBox(
          height: 100,
          width: 330,
          child: Center(
            child: TextField(
              onTap: () => setState(() {
                widget.selectedPass = false;
                widget.incorrectText = "password";
              }),
              onSubmitted: (value) => setState(() {
                widget.selectedPass = true;
                widget.errorText = widget.validation.isValidPass(value);
                widget.initText = widget.errorText;
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
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff8BC83F), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  prefixIcon:
                      widget.selectedPass ? Icon(Icons.lock_outlined) : null,
                  suffixIcon:
                      !widget.selectedPass ? Icon(Icons.lock_outlined) : null,
                  suffixIconColor: Color(0xff252B5C),
                  prefixIconColor: Color(0xff252B5C),
                  hintText: "Password"),
            ),
          ),
        ),
      ),
    );
  }
}
