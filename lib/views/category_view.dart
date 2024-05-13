import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news/widget/news_listview_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            NewsListViewsBuilder(category:category ,),
          ],
        ),
      ),

    );
  }
}
