import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../data/mock/categories_data.dart';
import '../../data/models/category_model.dart';
import 'see_all_header_tile.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderTile(title: 'Categories'),
        SizedBox(height: 25),
        GridView.builder(
          itemCount: mockCategories.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final category = mockCategories[index];
            return CategoryItem(category: category);
          },
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.containerBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(category.icon),
          const SizedBox(height: 5),
          Text(
            category.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 1.33,
            ),
          ),
        ],
      ),
    );
  }
}
