import 'package:flutter/widgets.dart';
import '../../data/mock/medical_centers_data.dart';
import 'center_card.dart';
import 'see_all_header_tile.dart';

class NearestMedicalCenterSection extends StatelessWidget {
  const NearestMedicalCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HeaderTile(title: 'Nearest Medical Center'),
        ),
        SizedBox(height: 17),
        SizedBox(
          height: 243,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: mockMedicalCenters.length,
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 8,
              top: 8,
            ),
            separatorBuilder: (_, __) => const SizedBox(width: 15),
            itemBuilder: (context, index) {
              final center = mockMedicalCenters[index];
              return CenterCard(center: center);
            },
          ),
        ),
        SizedBox(height: 42),
      ],
    );
  }
}
