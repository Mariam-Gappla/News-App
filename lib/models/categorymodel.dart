
import 'package:flutter/material.dart';
import 'package:news_app/models/categoryclass.dart';
class CategoryModel extends StatelessWidget {
  category categories;
  CategoryModel(this.categories);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
       image: DecorationImage(
         image:AssetImage(categories.img!),
         fit: BoxFit.cover

       ),
        color: Colors.blue,
      ),
      child: Center(child: Text(categories.title??"",style: TextStyle(color:Colors.white),)),
    );
  }
}
