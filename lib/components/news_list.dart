import 'package:flutter/material.dart';
import 'package:news_app/components/news_item.dart';
import '../models/article_model.dart';

class NewsList extends StatelessWidget {
  final List<ArticleModel> generalArticles;

  const NewsList({super.key, required this.generalArticles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: generalArticles.length,
        (context, index) {
          return NewsItem(
            articleModel: generalArticles[index],
          );
        },
      ),
    );
  }
}
