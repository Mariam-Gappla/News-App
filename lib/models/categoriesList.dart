import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/categoryclass.dart';
import 'package:news_app/models/categorymodel.dart';
import 'package:news_app/models/general.dart';
class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<category> categories=[
      category("assets/General-News.jpg",""),
      category("assets/bussiness.jpg", ""),
      category("assets/health.jpeg", "Health"),
      category("assets/science.jpeg", "Science"),
      category("assets/enter.jpg",""),
      category("assets/technology.jpeg", "Technology"),
      category("assets/sport.jpg", "")
    ];
    List<String> categor=["general","business","health","science","entertainment","technology","sports"];
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: categories.length,
          itemBuilder:(BuildContext,index)
              {
                return GestureDetector(
                    child: CategoryModel(categories[index]),
                  onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>General(categor[index])));
                  },
                );
              },
              scrollDirection: Axis.horizontal,

      ),
    );

   
  }
}
