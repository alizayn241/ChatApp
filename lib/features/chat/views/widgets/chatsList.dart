import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/features/chat/views/widgets/chatTile.dart';
import 'package:chat_app/features/chat/views/widgets/chat_view.dart';
import 'package:flutter/material.dart';

class Chatslist extends StatelessWidget {
  const Chatslist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatView()));
          },
          child: Chattile(
            image: AssetImages.avatar1,
            name: "Sarah Jone",
            lastmessage: "Hello, how are you?",
            lastmessageTime: "10:30 PM",
          ),
        ),
        Chattile(
          image: AssetImages.avatar2,
          name: "Ali Zain",
          lastmessage: "Hi, how are you?",
          lastmessageTime: "12:30 PM",
        ),
        Chattile(
          image: AssetImages.avatar2,
          name: "Zeyad Taha",
          lastmessage: "Hello, are you ready?",
          lastmessageTime: "5:30 PM",
        ),
        Chattile(
          image: AssetImages.avatar1,
          name: "Somaia Khalid",
          lastmessage: "Hello, how are you?",
          lastmessageTime: "1:30 PM",
        ),
        Chattile(
          image: AssetImages.avatar,
          name: "Abdelrahman Ahmed",
          lastmessage: "Hello, how are you?",
          lastmessageTime: "2:30 PM",
        ),
      ],
    );
  }
}
