import 'package:chat_app/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupButton extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController phonenumController;
  final VoidCallback onSuccess;
  const SignupButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    required this.phonenumController,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: "Sign Up",
      func: () {
        if (!nameController.text.isEmpty) {
          displayToastMessage("Name is required", context);
        } else if (passwordController.text.isEmpty) {
          displayToastMessage("Password is required", context);
        } else if (passwordController.text.length < 8) {
          displayToastMessage(
              "Password must be at least 8 characters", context);
        } else if (!emailController.text.contains("@")) {
          displayToastMessage("Email address is not valid", context);
        } else if (!phonenumController.text.isEmpty) {
          displayToastMessage("Phone number is required", context);
        } else {
          onSuccess();
        }
      },
    );
  }
}

displayToastMessage(String msg, BuildContext context) {
  Fluttertoast.showToast(msg: msg);
}
