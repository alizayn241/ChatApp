import 'package:chat_app/features/chat/views/widgets/chat_view.dart';
import 'package:chat_app/features/home/profile/profilePage.dart';
import 'package:get/get.dart';

class Pagepath {
  static final List<GetPage> pagePath = [
    GetPage(
      name: "/chatPage",
      page: () => ChatView(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: "/profilepage",
      page: () => Profilepage(),
      transition: Transition.rightToLeft,
    ),
  ];
}
