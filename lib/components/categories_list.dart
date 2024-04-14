import 'package:flutter/material.dart';
import 'package:news_app/components/category_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key, required this.categories});
  final List categories;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            if (index != 0) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CategoryItem(categoryModel: categories[index]),
              );
            }
            return CategoryItem(categoryModel: categories[index]);
          },
          itemCount: categories.length,
        ),
      ),
    ));
  }
}
