import 'package:flutter/material.dart';
import 'package:flutter_podcast_app/views/pages/intro/intro.dart';

/// Mostly Used as a redirector; We can keep our login logic here to keep the
/// main.dart file clean. That's a personal preference;
class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IntroScreens();
  }
}
