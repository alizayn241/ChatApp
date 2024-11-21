import 'package:chat_app/core/shared_widgets/defoult_text.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({super.key, required TextEditingController Namecontroller});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.name,
      label: "Inter Your Name",
      hint: "Your Name",
      prefix: Icons.perm_identity_outlined,
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
