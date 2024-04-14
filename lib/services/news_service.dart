import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=1583346ebdc44bacb664cbaff54b8abb&category=$category");
    List<dynamic> articles = response.data['articles'];
    return ArticleModel.convertToArticleModels(articles);
  }
}
