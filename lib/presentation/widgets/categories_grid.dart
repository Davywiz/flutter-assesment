import 'package:flutter/material.dart';
import 'see_all_header_tile.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTile(title: 'Categories'),
        SizedBox(height: 25),
      ],
    );
  }
}
