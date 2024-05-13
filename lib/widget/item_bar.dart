import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news/models/info_bar.dart';
import 'package:news/views/category_view.dart';

class ItemBar extends StatelessWidget {
  const ItemBar({super.key, required this.item});
final ItemModelBar item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: (){
      Navigator.of(context).push( MaterialPageRoute (
          builder: (context) {
            return CategoryView(category:item.text.toLowerCase() ,);
          }),);},
         child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(width: 200,height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(image:AssetImage(item.image) ,fit: BoxFit.fill),
            ),
            child: Center(
              child: Text(item.text,
                style: TextStyle(color: Colors.white,
                    fontSize: 25,fontWeight: FontWeight.w300 )),),
        ),
      ),
    );
  }
}
