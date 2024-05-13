import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/articalsmodel.dart';
import 'package:news/service/new_service.dart';
import 'package:news/widget/cardbar.dart';
import 'package:news/widget/web_view_news.dart';


class CardListView extends StatelessWidget {
  const CardListView({
    super.key,
    required this.article,
  });

  final List<ArticleModel> article;

  @override
  Widget build(BuildContext context) {
    return SliverList(
    delegate: SliverChildBuilderDelegate(
    childCount: article.length,
        (context,index){
      return CardBar(
         articleModel: article[index],
      );}
    ),

    );
  }
}
