import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class HeaderTile extends StatelessWidget {
  final String title;
  final VoidCallback? seeAllCallback;
  const HeaderTile({super.key, required this.title, this.seeAllCallback});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 16,

            fontWeight: FontWeight.w600,
            height: 1.50,
            letterSpacing: 0.50,
          ),
        ),
        GestureDetector(
          onTap: seeAllCallback,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 5,

            children: [
              Text(
                'See All',
                style: TextStyle(
                  color: AppColors.primaryBlue,
                  fontSize: 14,

                  fontWeight: FontWeight.w500,
                  height: 2,
                  letterSpacing: 0.50,
                ),
              ),

              Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 16,
                color: AppColors.primaryBlue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
