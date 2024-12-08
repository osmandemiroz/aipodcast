import 'package:flutter/material.dart';
import 'package:flutter_podcast_app/ui/consts/app_defaults.dart';
import 'package:flutter_podcast_app/ui/consts/app_images.dart';
import 'package:flutter_podcast_app/ui/consts/app_sizes.dart';
import 'package:flutter_podcast_app/views/themes/text.dart';
import 'package:get/get.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    required this.onTap,
    Key? key,
    this.height,
    this.width,
    this.padding,
    this.margin,
    this.label,
  }) : super(key: key);

  final void Function() onTap;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin ?? const EdgeInsets.symmetric(vertical: 5),
        padding: padding ?? const EdgeInsets.all(10),
        height: height ?? Get.height * 0.08,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: AppDefaults.defaulBorderRadius,
          border: Border.all(
            color: const Color(0xFF4285F4),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: AppDefaults.defaulBorderRadius,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(
                    AppImages.GOOGLE_LOGO,
                  ),
                ),
              ),
            ),
            AppSizes.wGap15,
            Flexible(
              flex: 4,
              child: Text(
                label ?? 'Login with Google',
                style: AppText.b2.copyWith(
                  color: const Color(0xFF4285F4),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
