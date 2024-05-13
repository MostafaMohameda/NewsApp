import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/articalsmodel.dart';
import 'package:news/views/category_view.dart';
import 'package:news/widget/web_view_news.dart';

class CardBar extends StatelessWidget {
  const CardBar({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push( MaterialPageRoute (
            builder: (context) {
              return PostView(url: articleModel.url!);
            }),);},
      child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              articleModel.image!=null?
              ClipRRect(
              borderRadius:BorderRadius.circular(5),
              child: Image.network(articleModel.image!,fit: BoxFit.cover,))
                  :Image.network('https://i.pinimg.com/originals/0d/d3/13/0dd313dff37cbc4c571a240537a071e2.jpg'),
              Text(articleModel.title,style: TextStyle(fontSize: 25,color: Colors.black,
                  fontWeight: FontWeight.w300,),
              maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(articleModel.subtitle??'',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18,color: Colors.grey),),
            ],),
      ),
    );
  }
}
