import 'package:flutter/material.dart';

import '../../../logic/email_logic.dart';


class EmailField extends StatefulWidget {
  EmailField({
    super.key,
    required this.selectedEmail,
    required this.incorrectText,
    required this.errorText,
    required this.validation,
    required this.initText,
  });

  bool selectedEmail;
  bool errorText;
  String incorrectText;
  bool initText;
  CustomValidation validation;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
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
              keyboardType: TextInputType.emailAddress,
              onTap: () => setState(() {
                widget.selectedEmail = false;
                widget.incorrectText = "email";
              }),
              onSubmitted: (value) => setState(() {
                widget.selectedEmail = true;
                widget.errorText = widget.validation.isValidEmail(value);
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
                      widget.selectedEmail ? Icon(Icons.email_outlined) : null,
                  suffixIcon:
                      !widget.selectedEmail ? Icon(Icons.email_outlined) : null,
                  suffixIconColor: Color(0xff252B5C),
                  prefixIconColor: Color(0xff252B5C),
                  hintText: "Email"),
            ),
          ),
        ),
      ),
    );
  }
}
