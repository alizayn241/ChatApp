import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/features/chat/views/widgets/chatBubble.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(
            AssetImages.avatar2,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ali Zain", style: Theme.of(context).textTheme.bodyLarge),
            Text("Online", style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        child: Row(
          children: [
            Container(
              child: Image.asset(
                AssetImages.mike,
                height: 40,
                width: 50,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: false,
                  hintText: "Type a message .....",
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Image.asset(
                AssetImages.gallary,
                height: 50,
                width: 50,
              ),
            ),
            Container(
              child: Image.asset(
                AssetImages.send,
                height: 40,
                width: 25,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Chatbubble(
              message: "hello how are you?",
              image: "",
              isComming: true,
              status: "read",
              time: "10:30 AM",
            ),
            Chatbubble(
              message: "hello how are you?",
              image: "",
              isComming: false,
              status: "read",
              time: "11:30 AM",
            ),
          ],
        ),
      ),
    );
  }
}
