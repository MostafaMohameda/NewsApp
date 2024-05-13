import 'package:flutter/material.dart';
import 'package:news/widget/card_listview.dart';
import 'package:news/widget/item_bar.dart';
import 'package:news/widget/item_listview.dart';
import 'package:news/widget/news_listview_builder.dart';

import '../models/info_bar.dart';
import '../widget/cardbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News',style: TextStyle(fontSize: 25,color: Colors.black),),
            Text('Cloud',style: TextStyle(fontSize: 25,color: Colors.amberAccent),),
          ],),
      ),
        body:Padding(padding:EdgeInsets.symmetric(horizontal: 15),
           child:CustomScrollView(
             physics: BouncingScrollPhysics(),
             slivers: [
               SliverToBoxAdapter(child: ItemListView(), ),
               SliverToBoxAdapter(child: SizedBox(height: 20,), ),
               NewsListViewsBuilder(category: 'general',),
             ],
           ),
          ),
        )

    ;
  }
}
