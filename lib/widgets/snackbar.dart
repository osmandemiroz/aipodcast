import 'package:flutter/material.dart';
import 'package:flutter_podcast_app/ui/consts/app_colors.dart';

import 'package:get/get.dart';

///showErrorSnackbar
void showErrorSnackbar(
  String title,
  String message,
) {
  Get.snackbar(
    title,
    message,
    borderColor: AppColors.error,
    borderWidth: 1,
    backgroundColor:
        Theme.of(Get.context!).colorScheme.surface.withOpacity(0.7),
  );
}

///showInformationSnackbar
void showInformationSnackbar(String title, String message) {
  Get.snackbar(
    title,
    message,
    borderColor: Theme.of(Get.context!).colorScheme.primary,
    borderWidth: 1,
    backgroundColor:
        Theme.of(Get.context!).colorScheme.surface.withOpacity(0.7),
  );
}
