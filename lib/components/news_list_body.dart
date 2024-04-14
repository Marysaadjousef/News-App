import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import '../models/article_model.dart';
import 'news_list.dart';

class NewsListBody extends StatefulWidget {
  const NewsListBody({super.key, required this.category});
  final String category;
  @override
  State<NewsListBody> createState() => _NewsListBodyState();
}

class _NewsListBodyState extends State<NewsListBody> {
  late Future<List<ArticleModel>> data;
  @override
  void initState() {
    super.initState();
    data = NewsService(dio: Dio()).getGeneralNews(category: widget.category);
  }

//cached network image
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(
              generalArticles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Center(
                child: Text(
                  "Ops there is an error, Try again",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
