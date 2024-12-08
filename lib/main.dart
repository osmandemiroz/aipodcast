import 'package:flutter/material.dart';
import 'package:flutter_podcast_app/controllers/navigation/navigation_controller.dart';
import 'package:flutter_podcast_app/views/root.dart';
import 'package:flutter_podcast_app/views/themes/themes.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const FlutterPodcastAudioApp());
  Get.put(NavigationController());
}

class FlutterPodcastAudioApp extends StatelessWidget {
  const FlutterPodcastAudioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Podcast App Demo',
        theme: AppThemes.lightTheme,
        home: const AppRoot(),
        enableLog: false,
      ),
    );
  }
}
