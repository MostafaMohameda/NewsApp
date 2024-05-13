import 'package:dio/dio.dart';
import 'package:news/models/articalsmodel.dart';

class NewsService{
final Dio dio=Dio();

  Future<List<ArticleModel>> getTopHeadlinessNews({required String category})  async {
    try {
      Response response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=db148ef548cd4f1fab60e241f9aaa75a&category=$category');
      Map<String,dynamic>jsonData=response.data;
      List<dynamic> article=jsonData['articles'];
      List<ArticleModel> articlesList=[];
      for (var article in article){
        ArticleModel articleModel=ArticleModel.FromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
}
}