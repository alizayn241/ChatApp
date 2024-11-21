import 'package:chat_app/core/shared_widgets/defoult_text.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController Passwordcontroller;
  final VoidCallback toogleVisibility;
  final bool isPasswordVisible;
  PasswordField(
      {super.key,
      required this.Passwordcontroller,
      required this.toogleVisibility,
      required this.isPasswordVisible});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.visiblePassword,
      label: "Inter Your Password",
      hint: "Your Password",
      controller: Passwordcontroller,
      prefix: Icons.lock_outline,
      isobscure: !isPasswordVisible,
      suffix: isPasswordVisible ? Icons.visibility : Icons.visibility_off,
      pressed: toogleVisibility,
      validate: (value) {
        if (value!.isEmpty) {
          return "Password must not be empty";
        } else {
          return null;
        }
      },
      error: '',
    );
  }
}
