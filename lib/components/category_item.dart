import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../screens/category_news_screen.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return CategoryNewsScreen(
              category: categoryModel.categoryName,
            );
          }),
        );
      },
      child: Stack(alignment: Alignment.center, children: [
        Container(
          height: 150,
          width: 250,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: ExactAssetImage(
                  categoryModel.image,
                ),
                fit: BoxFit.cover,
              )),
          child: Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          ),
        ),
        Center(
          child: Text(
            categoryModel.categoryName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        )
      ]),
    );
  }
}
