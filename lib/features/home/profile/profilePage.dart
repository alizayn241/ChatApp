import 'package:chat_app/features/home/profile/widgets/userInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Userinfo(),
          ],
        ),
      ),
    );
  }
}
