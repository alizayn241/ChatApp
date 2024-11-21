import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/chat/views/widgets/calls_view.dart';
import 'package:chat_app/features/chat/views/widgets/chat_view.dart';
import 'package:chat_app/features/settings/views/widgets/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
          iconTheme: IconThemeData(color: ColorApp.secondaryColor),
          activeIconTheme: IconThemeData(color: ColorApp.primaryColor),
          backgroundColor: Colors.white,
          titleStyle: TextStyle(
              color: ColorApp.secondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          activeTitleStyle: TextStyle(color: Colors.grey, fontSize: 14),
          actionButtonDetails: SCActionButtonDetails(
              color: const Color.fromARGB(255, 15, 185, 6),
              icon: Icon(
                Icons.expand_less,
                color: Colors.white,
              ),
              elevation: 2),
          elevation: 2.0,
          items: [
            SCBottomBarItem(
                icon: Icons.chat,
                title: "Chat",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatView(),
                    ),
                  );
                }),
            SCBottomBarItem(
                icon: Icons.notifications, title: "Notic", onPressed: () {}),
            SCBottomBarItem(
                icon: Icons.call,
                title: "Call",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallsView(),
                    ),
                  );
                }),
            SCBottomBarItem(
                icon: Icons.settings,
                title: "Setting",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingPage(),
                    ),
                  );
                }),
          ],
          circleItems: [
            SCItem(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
            SCItem(
              icon: Icon(Icons.chat),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatView(),
                  ),
                );
              },
            ),
            SCItem(
              icon: Icon(Icons.call),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CallsView(),
                  ),
                );
              },
            ),
          ],
          circleColors: [
            Color.fromARGB(255, 15, 185, 6),
            const Color.fromARGB(243, 255, 0, 0),
            Colors.yellow,
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
