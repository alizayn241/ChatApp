import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_body.dart';
import 'package:flutter/material.dart';

class ConfirmRow extends StatelessWidget {
  const ConfirmRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "Already have an account? ",
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
              builder: (context) => loginBody(),
            ),
          );
        },
        child: Text(
          "Log In here",
          style: Styles.textStyle10,
        ),
      ),
    ]);
  }
}
