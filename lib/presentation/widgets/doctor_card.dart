import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';
import '../../core/theme/app_colors.dart';
import '../../data/models/doctor_model.dart';

class DoctorCard extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColors.border,
            blurRadius: 8,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeaderRow(doctor: doctor),

            const SizedBox(height: 20),
            _AppointmentRow(),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 1,
              decoration: BoxDecoration(color: AppColors.dividerColor),
            ),
            const SizedBox(height: 20),
            _LocationRow(doctor: doctor),
          ],
        ),
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  final DoctorModel doctor;
  const _HeaderRow({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Avatar
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1.31, color: const Color(0xFFF4F4F6)),
          ),
          child: Image.asset(doctor.avatar),
        ),

        const SizedBox(width: 10),
        // Name, specialty
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor.name,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 16,

                  fontWeight: FontWeight.w600,
                  height: 1.40,
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      '${doctor.specialty} | ${doctor.years} Years',
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 13.5,

                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              _RatingRow(doctor: doctor),
            ],
          ),
        ),
        // Favorite icon
        const SizedBox(width: 10),
        Icon(
          doctor.isFavorite ? Icons.favorite : Icons.favorite_border,
          size: 21,
          color: doctor.isFavorite
              ? AppColors.favoriteRed
              : const Color(0xffD5D5D5),
        ),
      ],
    );
  }
}

class _RatingRow extends StatelessWidget {
  final DoctorModel doctor;
  const _RatingRow({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          doctor.rating.toStringAsFixed(1),
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.40,
          ),
        ),
        const SizedBox(width: 4),
        Assets.images.star.image(),

        const SizedBox(width: 8),
        Text(
          '${doctor.reviews} Reviews',
          style: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: 14,

            fontWeight: FontWeight.w400,
            height: 1.40,
          ),
        ),
      ],
    );
  }
}

class _AppointmentRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        // Calendar chip
        _InfoChip(icon: Icons.calendar_today_outlined, label: 'Tomorrow'),
        SizedBox(width: 12),
        // Time chip
        _InfoChip(icon: Icons.schedule_rounded, label: '10:30am, 05:00pm'),
      ],
    );
  }
}

class _LocationRow extends StatelessWidget {
  final DoctorModel doctor;
  const _LocationRow({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.svg.location.svg(),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            doctor.hospital,
            style: const TextStyle(
              color: AppColors.greenColor,
              fontSize: 14,

              fontWeight: FontWeight.w400,
              height: 1.40,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          '${doctor.distanceKm.toStringAsFixed(0)}km Away',
          style: const TextStyle(
            color: AppColors.textSecondary,

            fontSize: 14,

            fontWeight: FontWeight.w400,
            height: 1.40,
          ),
        ),
      ],
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;
  const _InfoChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.primaryBlue),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.primaryBlue,
            fontSize: 14,

            fontWeight: FontWeight.w400,
            height: 1.40,
          ),
        ),
      ],
    );
  }
}
