import 'package:flutter/material.dart';
import '../models/info_bar.dart';
import 'item_bar.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});
  final List<ItemModelBar>barlist=const[
    ItemModelBar(image: 'assets/business.avif', text: 'Business'),
    ItemModelBar(image: 'assets/entertaiment.avif', text: 'Entertainment'),
    ItemModelBar(image: 'assets/general.avif', text: 'General'),
    ItemModelBar(image: 'assets/health.avif', text: 'Health'),
    ItemModelBar(image: 'assets/science.avif', text: 'Science'),
    ItemModelBar(image: 'assets/sports.avif', text: 'Sports'),
    ItemModelBar(image: 'assets/technology.jpeg', text: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Container(height: 100,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        shrinkWrap: true,
        itemCount: barlist.length,
        itemBuilder: (context,index){
          return ItemBar(item: barlist[index],);
        },
      ),
    );
  }
}
