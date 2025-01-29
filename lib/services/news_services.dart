import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticalModel>> getNews({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=37b8b2f6a84b4735bcf6f2b4ce3966d9&category=$category');
    Map<String, dynamic> jsonData = response.data;
    log(jsonData.toString());
    List<dynamic> articales = jsonData['articles'];
    List<ArticalModel> articallist = [];
    for (var artical in articales) {
      ArticalModel articalModel = ArticalModel(
          image: artical['urlToImage'],
          title: artical['title'],
          subtitle: artical['description']);
      articallist.add(articalModel);
    }
    return articallist;
  }
}
