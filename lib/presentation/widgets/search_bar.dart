import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../gen/assets.gen.dart';

class DashboardSearchBar extends StatelessWidget {
  const DashboardSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.containerBackground,
              borderRadius: BorderRadius.circular(14),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Assets.svg.searchIcon.svg(),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Assets.svg.searchTrailingIcon.svg(),
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: 0.5,
                ),
                fillColor: AppColors.containerBackground,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.containerBackground,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Assets.svg.map.svg(),
        ),
      ],
    );
  }
}
