import 'package:flutter/material.dart';
import 'package:news_app/components/app_bar_design.dart';
import 'package:news_app/components/news_list_body.dart';
import '../components/categories_list.dart';
import '../models/category_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryName: "Technology",
        image: "assets/0c53b91f63c7fea94370f9c859b05846.jpg"),
    CategoryModel(
        categoryName: "Sports",
        image: "assets/beb36a48dd35848172a10bb13ca9ae98.jpg"),
    CategoryModel(
        categoryName: "Business",
        image: "assets/4d0bc743a898dccda3a4aeb8f0ab54e7.jpg"),
    CategoryModel(
        categoryName: "Health",
        image: "assets/e238df141b8d4b06a4b13f69ca96bb8b.jpg"),
    CategoryModel(
        categoryName: "Science",
        image: "assets/a15d759d1ce1fbba0aee720784bf19a6.jpg"),
    CategoryModel(
        categoryName: "Entertainment",
        image:
            "assets/Your-Complete-Guide-to-Mobile-Entertainment-Category.webp"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarComponent(word1: "News", word2: "Cloud"),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            CategoriesList(categories: categories),
            const NewsListBody(
              category: "general",
            ),
          ],
        ));
  }
}
