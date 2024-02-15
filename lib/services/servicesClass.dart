import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/models/ArticilModel.dart';

class Services
{
  final dio=Dio();
  Services();
  List<Article> Articles=[];
  String? category;
   Future<List<Article>> getNews(category) async
  {
     var respose= await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=e4445951a56441bf97dd46d47faf9a9b&category=$category');
     Map<String,dynamic> jsondata=respose.data;
     List<dynamic> articles=jsondata["articles"] ;

     for(var i=0;i < articles.length;i++)
       {
         Article article=Article(
           title: articles[i]["title"],
           description: articles[i]["description"],
           img: articles[i]["urlToImage"]
         );
         Articles.add(article);
       }
     print(Articles.length);
     return Articles;
  }
}
