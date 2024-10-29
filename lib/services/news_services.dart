import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  String apiKey = "fca02b773b56499b9f833173ca79ad0e";

  NewsServices(this.dio);

  getNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=$apiKey&country=eg&category=technology");

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData["articles"];

    List<Article> articlesList = [];

    for (var article in articles) {
      Article articleModel = Article(
        author: article["author"],
        description: article["description"],
        title: article["title"],
        url: article["url"],
        publishedAt: article["publishedAt"],
        imageUrl: article["urlToImage"],
      );
      articlesList.add(articleModel);
    }
    print(articlesList);
  }
}
