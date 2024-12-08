import 'package:flutter/widgets.dart';
import 'package:flutter_podcast_app/views/pages/create/create_screen.dart';
import 'package:flutter_podcast_app/views/pages/home/home_screen.dart';
import 'package:flutter_podcast_app/views/pages/profile/profile_screen.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NavigationController extends GetxController {
  /* <---- Entry Point Screen Navigation ----> */
  /// Used For EntryPoint in Views
  int currentIndex = 0;
  // ignore: inference_failure_on_function_return_type
  void changeHomeMenu(int index) {
    currentIndex = index;
    update();
  }

  /// Decides Which Page to return based on the nav index
  Widget currentSelectedPage() {
    if (currentIndex == 0) {
      return const HomeScreen();
    } else if (currentIndex == 1) {
      return const CreateScreen();
    } else if (currentIndex == 2) {
      return const ProfileScreen();
    } else {
      return const HomeScreen();
    }
  }
}
