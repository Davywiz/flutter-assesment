import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

ThemeData buildAppTheme() {
  final base = ThemeData.light();

  final appTheme = base.copyWith(
    scaffoldBackgroundColor: AppColors.primaryBlue,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBlue),
  );

  return appTheme.copyWith(
    textTheme: GoogleFonts.publicSansTextTheme(appTheme.textTheme).apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    ),

    iconTheme: const IconThemeData(color: AppColors.textPrimary),

    dividerColor: AppColors.border,
  );
}
