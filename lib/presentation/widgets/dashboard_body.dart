import 'package:flutter/material.dart';
import 'categories_grid.dart';
import 'quick_action_row.dart';
import '../../core/theme/app_colors.dart';
import 'appointment_card.dart';
import 'drag_handle.dart';
import 'search_bar.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Column(
        children: const [
          DragHandle(),
          SizedBox(height: 15),
          DashboardSearchBar(),
          SizedBox(height: 25),
          AppointmentCard(),
          SizedBox(height: 25),
          QuickActionRow(),
          SizedBox(height: 25),
          CategoriesGrid(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
