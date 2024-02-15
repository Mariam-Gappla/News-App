import 'package:flutter/material.dart';
import 'package:news_app/models/ListNews.dart';

class General extends StatelessWidget {
  General(this.category) ;
String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ListNews(category))
        ],
      ),

    );
  }
}
