import 'package:flutter/material.dart';

ThemeData buildAppTheme() {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0066FF)),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  );
}
