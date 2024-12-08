import 'package:flutter/material.dart';
import 'package:flutter_podcast_app/ui/consts/app_colors.dart';
import 'package:flutter_podcast_app/ui/consts/app_defaults.dart';
import 'package:flutter_podcast_app/ui/consts/app_sizes.dart';
import 'package:flutter_podcast_app/utils/ui_helper.dart';
import 'package:flutter_podcast_app/views/themes/text.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    brightness: Brightness.light,
    textTheme: GoogleFonts.poppinsTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      actionsIconTheme: const IconThemeData(
        color: AppColors.darkDark,
      ),
      titleTextStyle: const TextStyle(
        color: AppColors.dark,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: AppColors.dark),
      toolbarTextStyle: AppText.b1,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: AppDefaults.defaulBorderRadius,
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppDefaults.defaulBorderRadius,
        borderSide: const BorderSide(
          color: AppColors.placeholder,
        ),
      ),
      fillColor: AppColors.placeholder.withOpacity(0.2),
      filled: true,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(AppSizes.DEFAULT_PADDING),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(AppSizes.DEFAULT_PADDING),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppUiHelper.generateMaterialColor(AppColors.primary),
    ).copyWith(secondary: AppColors.accent),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkDark,
    brightness: Brightness.dark,
    cardColor: AppColors.dark.withOpacity(0.7),
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      actionsIconTheme: const IconThemeData(
        color: AppColors.primary,
      ),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      backgroundColor: AppColors.darkDark,
      iconTheme: const IconThemeData(color: AppColors.primary),
      toolbarTextStyle: AppText.b1,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(AppSizes.DEFAULT_PADDING),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(AppSizes.DEFAULT_PADDING),
        side: const BorderSide(
          color: AppColors.primary,
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppUiHelper.generateMaterialColor(AppColors.primary),
    ).copyWith(secondary: AppColors.accent),
  );
}
