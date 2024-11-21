import 'package:chat_app/features/chat/views/widgets/chatsList.dart';
import 'package:chat_app/features/home/widget/tabBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed("/profilepage");
            },
            icon: Icon(Icons.more_vert),
          )
        ],
        bottom: Tabbar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 15, 185, 6),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: TabBarView(
          controller: tabController,
          children: [
            Chatslist(),
          ],
        ),
      ),
    );
  }
}
