import 'package:flutter/material.dart';
import 'quick_action_card.dart';

class QuickActionRow extends StatelessWidget {
  const QuickActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: QuickActionCard(
            backgroundColor: Color(0xFFF9F5FF),
            iconBackgroundColor: Color(0xFFE7EFFF),
            iconBorderColor: Color(0xFFA0B6EA),
            icon: 'menuBoard',
            title: 'Book Doctor Appointment',
            subtitle: 'Find a Doctor or\nSpecialist',
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: QuickActionCard(
            backgroundColor: Color(0xFFEDFCF2),
            iconBackgroundColor: Color(0xFFD3F8DF),
            iconBorderColor: Color(0xFFAAF0C4),
            icon: 'building',
            title: 'Book Hospital Appointment',
            subtitle: 'Locate nearby hospital\nto visit',
          ),
        ),
      ],
    );
  }
}
