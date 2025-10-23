// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';
import '../../core/theme/app_colors.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(Assets.images.tileBackground.path),
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DoctorInfo(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _InfoRow(
                          icon: Assets.svg.calendarTick.svg(
                            color: AppColors.white,
                          ),
                          text: '7 October 2021',
                        ),
                        SizedBox(height: 8),
                        _InfoRow(
                          icon: Assets.svg.clock.svg(color: AppColors.white),
                          text: '08:00 AM - 10:00 AM',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Assets.svg.send.svg(width: 24, height: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _indicator(color: AppColors.primaryBlue),
            const SizedBox(width: 4),
            _indicator(color: AppColors.primaryBlue.withValues(alpha: 0.2)),
            const SizedBox(width: 4),
            _indicator(color: AppColors.primaryBlue.withValues(alpha: 0.2)),
          ],
        ),
      ],
    );
  }

  Widget _indicator({required Color color}) {
    return Container(
      width: 15,
      height: 3,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class _DoctorInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1.12, color: const Color(0xFFF4F4F6)),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Jason Smith',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: const [
                    Text('Dentist', style: _subTextStyle),
                    SizedBox(width: 6),
                    _Dot(),
                    SizedBox(width: 6),
                    Text('ABC Medical Center', style: _subTextStyle),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final Widget icon;
  final String text;

  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 3,
      decoration: const BoxDecoration(
        color: AppColors.textSecondary,
        shape: BoxShape.circle,
      ),
    );
  }
}

const _subTextStyle = TextStyle(
  color: AppColors.textSecondary,
  fontSize: 14,
  fontWeight: FontWeight.w400,
  height: 1.4,
);
