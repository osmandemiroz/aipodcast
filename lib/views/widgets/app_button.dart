import 'package:flutter/material.dart';
import 'package:flutter_podcast_app/ui/consts/app_colors.dart';
import 'package:flutter_podcast_app/ui/consts/app_defaults.dart';
import 'package:flutter_podcast_app/views/themes/text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.label,
    required this.onTap,
    Key? key,
    this.isLoading = false,
    this.width,
    this.margin,
    this.padding,
    this.color = AppColors.accent,
  }) : super(key: key);

  final String label;
  final void Function() onTap;
  final bool isLoading;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: AppDefaults.defaultDuration,
        margin: margin ?? const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: AppDefaults.defaulBorderRadius,
        ),
        width: width,
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Text(
                label,
                style: AppText.b1.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
