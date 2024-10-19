import 'package:chat_app/core/shared_widgets/defoult_text.dart';
import 'package:flutter/material.dart';

class PhonenumField extends StatelessWidget {
  const PhonenumField({super.key});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.number,
      label: "Inter Your Phone Number",
      hint: "Your Phone Number",
      prefix: Icons.phone_android_outlined,
      validate: (value) {
        if (value!.isEmpty) {
          return "Phone number must not be empty";
        } else {
          return null;
        }
      },
    );
  }
}
