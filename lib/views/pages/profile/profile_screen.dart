import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:get/route_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      width: Get.width,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Profile Screen',
          ),
        ],
      ),
    );
  }
}
