import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../gen/assets.gen.dart';

class QuickActionCard extends StatelessWidget {
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Color iconBorderColor;
  final String icon;
  final String title;
  final String subtitle;

  const QuickActionCard({
    super.key,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.iconBorderColor,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ActionIcon(
            iconBackgroundColor: iconBackgroundColor,
            iconBorderColor: iconBorderColor,
            icon: icon,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              height: 1.2,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 1.3,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionIcon extends StatelessWidget {
  final Color iconBackgroundColor;
  final Color iconBorderColor;
  final String icon;

  const _ActionIcon({
    required this.iconBackgroundColor,
    required this.iconBorderColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: iconBackgroundColor,
        border: Border.all(width: 1, color: iconBorderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(padding: const EdgeInsets.all(6), child: _getIcon(icon)),
    );
  }

  Widget _getIcon(String iconName) {
    switch (iconName) {
      case 'menuBoard':
        return Assets.images.menuBoard.image();
      case 'building':
        return Assets.images.building.image();
      default:
        return const SizedBox.shrink();
    }
  }
}
