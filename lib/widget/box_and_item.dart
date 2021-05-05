
import 'package:flutter/cupertino.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/widget/item_widget.dart';
import 'package:stocklist_app/widget/box_widget.dart';

class BoxAndItemListView extends StatelessWidget {

  final List<Item> items;
  final List<Box> boxes;

  BoxAndItemListView({required this.items, required this.boxes});


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        if(index <boxes.length) {
          return BoxListTile(box: boxes[index]);
        }else{
          return ItemListTileWidget(item: items[index - boxes.length]);
        }
      },
      itemCount: items.length + boxes.length,
    );
  }
}

