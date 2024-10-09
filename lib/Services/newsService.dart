import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/Models/ArticalModel.dart';

class NewsService {
  final Dio dio;
  NewsService(
    this.dio,
  );
  String category = 'general';
  Future<List<Articalmodel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=a941647676374b6f91950997307f6927&category=$category');

      Map<String, dynamic> jsonDAta = response.data;
      List<dynamic> articles = jsonDAta['articles'];
      List<Articalmodel> articalList = [];

      for (var article in articles) {
        Articalmodel articlemodel = Articalmodel.fromjson(article);
        articalList.add(articlemodel);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
