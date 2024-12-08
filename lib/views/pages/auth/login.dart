import 'package:flutter/material.dart';
import 'package:flutter_podcast_app/ui/consts/app_images.dart';
import 'package:flutter_podcast_app/ui/consts/app_sizes.dart';
import 'package:flutter_podcast_app/views/pages/entrypoint/entrypoint.dart';
import 'package:flutter_podcast_app/views/themes/text.dart';
import 'package:flutter_podcast_app/views/widgets/app_button.dart';
import 'package:flutter_podcast_app/views/widgets/google_sign_in_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.all(
            AppSizes.DEFAULT_PADDING,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /* <---- HeadLine ----> */
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Discover your \n favorite podcast',
                  style: AppText.h6.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              /* <---- Hero Image ----> */
              Expanded(
                child: Image.asset(
                  AppImages.LOGIN_HERO,
                  width: Get.width * 0.6,
                ),
              ),

              /* <---- Login ----> */
              Column(
                children: [
                  AppButton(
                    width: Get.width * 0.6,
                    label: 'Login With Email',
                    onTap: () {
                      Get.to(() => const AppEntryPoint());
                    },
                  ),
                  GoogleSignInButton(
                    width: Get.width * 0.6,
                    onTap: () {
                      Get.to(() => const AppEntryPoint());
                    },
                  ),
                  AppSizes.hGap30,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
