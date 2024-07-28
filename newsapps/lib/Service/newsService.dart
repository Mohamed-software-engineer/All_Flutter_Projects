import 'package:dio/dio.dart';
import 'package:newsapps/Models/articlesModels.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticlesModels>> getNews(String category) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=800e027051b64603aa197191829736b8');
    Map<String, dynamic> jasonData = response.data;

    List<dynamic> articles = jasonData["articles"];
    List<ArticlesModels> articlesList = [];

    for (var i in articles) {
      ArticlesModels object = ArticlesModels(
          image: i["urlToImage"],
          title: i["title"],
          description: i["description"]);
      articlesList.add(object);
    }
    return articlesList;
  }
}
