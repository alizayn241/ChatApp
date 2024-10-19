import 'package:chat_app/features/auth/home/homeView.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/confirm_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phonenum_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_title.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});
  @override
  State<SignupBody> createState() => _SignupBodyState();
}

TextEditingController Emailcontroller = TextEditingController();
TextEditingController Passwordcontroller = TextEditingController();
TextEditingController Namecontroller = TextEditingController();
TextEditingController Phonenumcontroller = TextEditingController();
bool isPasswordVisible = false;

class _SignupBodyState extends State<SignupBody> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const logoWidget(),
                SizedBox(
                  height: 20,
                ),
                SignupTitle(),
                SizedBox(
                  height: 20,
                ),
                NameField(),
                SizedBox(
                  height: 20,
                ),
                EmailField(
                  Emailcontroller: Emailcontroller,
                ),
                SizedBox(
                  height: 20,
                ),
                PhonenumField(),
                SizedBox(
                  height: 20,
                ),
                PasswordField(
                  Passwordcontroller: Passwordcontroller,
                  toogleVisibility: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  isPasswordVisible: isPasswordVisible,
                ),
                SizedBox(
                  height: 20,
                ),
                SignupButton(
                    emailController: Emailcontroller,
                    passwordController: Passwordcontroller,
                    nameController: Namecontroller,
                    phonenumController: Phonenumcontroller,
                    onSuccess: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homeview(),
                          ));
                    }),
                SizedBox(
                  height: 10,
                ),
                ConfirmRow(),
              ],
            ))));
  }
}
