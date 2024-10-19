import 'package:chat_app/features/auth/presentation/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupBody(),
    );
  }
}
