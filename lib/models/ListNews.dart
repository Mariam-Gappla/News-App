import 'package:flutter/material.dart';
import 'package:news_app/models/ArticilModel.dart';
import 'package:news_app/models/categoryclass.dart';
import 'package:news_app/services/servicesClass.dart';
class ListNews extends StatefulWidget {
  String? categoryName;
  ListNews(this.categoryName) ;

  @override
  State<ListNews> createState() => _ListNewsState();

}

class _ListNewsState extends State<ListNews> {
  @override
  List<Article> article=[];
  bool isLoading=true;
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchNews();

  }
   Future<List<Article>>fetchNews() async
  {
    article= await Services().getNews(widget.categoryName);
    setState(() {

    });
    isLoading=false;
    return article;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading==true? Center(child:CircularProgressIndicator()): SizedBox(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: article.length,
        itemBuilder: (BuildContext,index){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              article[index].img==null?Image.asset("assets/health.jpeg",fit:BoxFit.fill,width: double.infinity,)
              :Image.network(article[index].img!,fit:BoxFit.fill,width: double.infinity,),
              article[index].title==null?Text("mariam",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),):
          Text(article[index].title!,style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
              article[index].description!=null ? Text(article[index].description!):
              Text("mariam Gappla Aziz"),
            ],
          );
        },
      ),
    );
  }
}
