import 'package:chat_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class SignupTitle extends StatelessWidget {
  const SignupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Register to New Account",
      style: Styles.textStyle24,
      textAlign: TextAlign.center,
    );
  }
}
