import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/service/new_service.dart';
import 'package:news/widget/card_listview.dart';

import '../models/articalsmodel.dart';


class NewsListViewsBuilder extends StatefulWidget {
   const NewsListViewsBuilder({super.key, required this.category});
   final String category;
  @override
  State<NewsListViewsBuilder> createState() => _NewsListViewsBuilderState();
}

class _NewsListViewsBuilderState extends State<NewsListViewsBuilder> {
 var future;
  @override
  void initState() {
    future=  NewsService().getTopHeadlinessNews(category: widget.category);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
    future: future,
    builder: (context,snapshot){
      if(snapshot.hasData){
        return CardListView(article: snapshot.data!);
      }
      else if(snapshot.hasError){
         return const SliverToBoxAdapter(
            child:Text('Sorry has an Erorr ,TryLater',
            style: TextStyle(fontSize: 22,color: Colors.black),
            ) ,);
      }
      else{
        return const SliverToBoxAdapter(child: Align(alignment: Alignment.center,
            child: CircularProgressIndicator()),);
      }
    });
  }
}
