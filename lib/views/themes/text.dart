import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

/// To Make a clean look at code. These are all theme specific style
class AppText {
  // For easy access on the app
  static TextStyle get b1 => Get.textTheme.bodyLarge!;
  static TextStyle get b2 => Get.textTheme.bodyMedium!;

  static TextStyle get h1 => Get.textTheme.displayLarge!;
  static TextStyle get h2 => Get.textTheme.displayMedium!;
  static TextStyle get h3 => Get.textTheme.displaySmall!;
  static TextStyle get h4 => Get.textTheme.headlineLarge!;
  static TextStyle get h5 => Get.textTheme.headlineMedium!;
  static TextStyle get h6 => Get.textTheme.headlineSmall!;

  static TextStyle get caption => Get.textTheme.bodySmall!;
  static TextStyle get subtitle1 => Get.textTheme.titleLarge!;
  static TextStyle get subtitle2 => Get.textTheme.titleMedium!;

  /* <---- Extra ----> */
  static TextStyle get bLight =>
      Get.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w100);
}
