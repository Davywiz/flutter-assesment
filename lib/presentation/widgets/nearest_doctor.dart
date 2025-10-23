import 'package:flutter/widgets.dart';

import 'doctor_card.dart';

import '../../data/mock/doctors_data.dart';
import 'see_all_header_tile.dart';

class NearestDoctor extends StatelessWidget {
  const NearestDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTile(title: 'Nearest Doctors'),
        SizedBox(height: 25),
        ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: mockNearestDoctors.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const SizedBox(height: 15),
          itemBuilder: (context, index) {
            final doctor = mockNearestDoctors[index];
            return DoctorCard(doctor: doctor);
          },
        ),
      ],
    );
  }
}
