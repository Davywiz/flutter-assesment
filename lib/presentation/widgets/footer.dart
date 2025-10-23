import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

import '../../gen/assets.gen.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF0C68C0),
          radius: 26,
          child: Assets.svg.bxCheckShieldSvg.svg(),
        ),
        SizedBox(height: 8),
        Text(
          'Information shared via forms is\nencrypted and can only be viewed \nby those you share it with.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.69,
            letterSpacing: 0.50,
          ),
        ),
      ],
    );
  }
}
