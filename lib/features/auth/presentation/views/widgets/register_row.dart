import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_view.dart';
import 'package:flutter/material.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "Don't have an account?",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignupPage(),
            ),
          );
        },
        child: Text(
          "Sign Up",
          style: Styles.textStyle10,
        ),
      ),
    ]);
  }
}
