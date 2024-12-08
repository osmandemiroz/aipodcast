import 'package:animations/animations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_podcast_app/controllers/navigation/navigation_controller.dart';
import 'package:flutter_podcast_app/ui/consts/app_colors.dart';
import 'package:flutter_podcast_app/ui/consts/app_defaults.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppEntryPoint extends StatelessWidget {
  const AppEntryPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<NavigationController>(
        builder: (context) {
          return CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: AppColors.primary,
            buttonBackgroundColor: AppColors.primary,
            height: 8.h,
            items: [
              const Icon(
                FeatherIcons.home,
                color: Colors.white,
              ),
              Icon(
                FeatherIcons.plusCircle,
                color: AppColors.white,
                size: 5.h,
                shadows: [
                  BoxShadow(
                    color: AppColors.white,
                    blurRadius: 12.px,
                  ),
                ],
              ),
              const Icon(
                FeatherIcons.user,
                color: Colors.white,
              ),
            ],
            index: context.currentIndex,
            onTap: (index) {
              context.changeHomeMenu(index);
            },
          );
        },
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            GetBuilder<NavigationController>(
              initState: (val) {},
              builder: (controller) => PageTransitionSwitcher(
                duration: AppDefaults.defaultDuration,
                transitionBuilder: (child, animation, secondAnimation) {
                  return SharedAxisTransition(
                    animation: animation,
                    secondaryAnimation: secondAnimation,
                    transitionType: SharedAxisTransitionType.horizontal,
                    child: child,
                  );
                },
                child: controller.currentSelectedPage(),
              ),
            ),
            // Navigation Bar
          ],
        ),
      ),
    );
  }
}
