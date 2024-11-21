import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplashController extends GetxController {
  final auth = FirebaseAuth.instance;

  void onInt() async {
    super.onInit();
    await checkUser();
  }

  Future<void> checkUser() async {}
}
