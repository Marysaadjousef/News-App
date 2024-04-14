import 'package:flutter/material.dart';

import '../components/news_list_body.dart';

class CategoryNewsScreen extends StatelessWidget {
  const CategoryNewsScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListBody(
            category: category,
          )
        ],
      ),
    );
  }
}
