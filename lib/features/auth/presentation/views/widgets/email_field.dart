import 'package:chat_app/core/shared_widgets/defoult_text.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController? Emailcontroller;
  const EmailField({super.key, this.Emailcontroller});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.emailAddress,
      label: "Inter Your Email",
      hint: "Your Email",
      prefix: Icons.email_outlined,
      controller: Emailcontroller,
      validate: (value) {
        if (value!.isEmpty) {
          return "Email must not be empty";
        } else {
          return null;
        }
      },
      error: '',
    );
  }
}
