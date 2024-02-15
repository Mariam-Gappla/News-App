import 'package:flutter/material.dart';
import 'package:news_app/models/ListNews.dart';
import 'package:news_app/models/categoriesList.dart';
import 'package:news_app/services/servicesClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text("News",style:TextStyle(
                color: Colors.black,
              ) ,),
              Text("app", style: TextStyle(
                color: Colors.orange,
              ),)
            ],
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CategoriesList(),),
              SliverToBoxAdapter(child:SizedBox(height: 20,),),
              SliverToBoxAdapter(child: ListNews("general"),)
            ],
          ),
        )
      ),
    );
  }
}