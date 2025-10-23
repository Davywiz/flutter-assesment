import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/theme/app_colors.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Medical Center',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.white,
        fontSize: 23,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.50,
      ),
    );
  }
}
