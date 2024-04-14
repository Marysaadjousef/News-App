class ArticleModel {
  final String image;
  final String title;
  final String description;
  final String articleUrl;
  const ArticleModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.articleUrl});
  factory ArticleModel.fromJson(dynamic json) {
    return ArticleModel(
        image: json['urlToImage'] ??
            "https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/newscms/2019_01/2705191/nbc-social-default.png",
        title: json["title"],
        description: json["description"] ?? "",
        articleUrl: json['url']);
  }
  static List<ArticleModel> convertToArticleModels(List<dynamic> articles) {
    List<ArticleModel> articlesModels = [];
    for (var article in articles) {
      articlesModels.add(ArticleModel.fromJson(article));
    }
    return articlesModels;
  }
}
