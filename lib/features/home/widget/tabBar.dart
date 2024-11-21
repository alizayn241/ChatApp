import 'package:flutter/material.dart';

Tabbar(TabController tabController, BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(60.0),
    child: TabBar(
      controller: tabController,
      indicatorWeight: 5,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: Theme.of(context).textTheme.bodyLarge,
      unselectedLabelStyle: Theme.of(context).textTheme.labelLarge,
      tabs: [
        Text("Chats"),
        Text("Status"),
        Text("Calls"),
      ],
    ),
  );
}
