import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

import 'item_info.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
  }) : super(key: key);
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: color,),
        height: 100,

        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(

                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(30),

              ),
                color: const Color(0xffFFF6DC),),
                 child: Image.asset(item.image!)),
            Expanded(child: ItemInfo(item: item)),
          ],
        ),
      ),
    );
  }
}
