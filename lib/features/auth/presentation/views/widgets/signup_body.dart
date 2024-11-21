import 'package:chat_app/contreoller/authController.dart';
import 'package:chat_app/features/home/homeView.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/confirm_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/name_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phonenum_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});
  @override
  State<SignupBody> createState() => _SignupBodyState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController Namecontroller = TextEditingController();
TextEditingController Phonenumcontroller = TextEditingController();
bool isPasswordVisible = false;

class _SignupBodyState extends State<SignupBody> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Authcontroller authcontroller = Get.put(Authcontroller());
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
                NameField(
                  Namecontroller: Namecontroller,
                ),
                SizedBox(
                  height: 20,
                ),
                EmailField(
                  Emailcontroller: email,
                ),
                SizedBox(
                  height: 20,
                ),
                PhonenumField(Phonenumcontroller: Phonenumcontroller),
                SizedBox(
                  height: 20,
                ),
                PasswordField(
                  Passwordcontroller: password,
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
                Obx(
                  () => authcontroller.isloading.value
                      ? CircularProgressIndicator()
                      : SignupButton(
                          emailController: email,
                          passwordController: password,
                          nameController: Namecontroller,
                          phonenumController: Phonenumcontroller,
                          onSuccess: () {
                            authcontroller.isloading.value = true;
                            authcontroller.createUser(
                              email.text,
                              password.text,
                            );
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Homeview(),
                                ));
                          }),
                ),
                SizedBox(
                  height: 10,
                ),
                ConfirmRow(),
              ],
            ))));
  }
}
