import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../screens/web_view_screen.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(
              articleUrl: articleModel.articleUrl,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
        child: Container(
          clipBehavior: Clip.antiAlias,
          height: 300,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.black12, spreadRadius: 0.5),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                articleModel.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 220,
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  articleModel.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  articleModel.description,
                  style: const TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
