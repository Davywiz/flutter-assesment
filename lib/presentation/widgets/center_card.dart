import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

import '../../core/theme/app_colors.dart';
import '../../data/models/medical_center_model.dart';

class CenterCard extends StatelessWidget {
  final MedicalCenterModel center;
  const CenterCard({super.key, required this.center});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 180,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 8,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Stack(
                children: [
                  Image.asset(
                    center.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: ShapeDecoration(
                        color: AppColors.black.withValues(alpha: 0.30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Icon(
                        center.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 16,
                        color: center.isFavorite
                            ? AppColors.favoriteRed
                            : AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Text content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 10),
              Text(
                center.name,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 15,

                  fontWeight: FontWeight.w600,
                  height: 1.40,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 3),
              Text(
                center.location,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 13.5,

                  fontWeight: FontWeight.w400,
                  height: 1.40,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    '+${center.reviews ~/ 1000}K Review',
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    center.rating.toStringAsFixed(1),
                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 12,

                      fontWeight: FontWeight.w500,
                      height: 1.40,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Assets.images.star.image(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
