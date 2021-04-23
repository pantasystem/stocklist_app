import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/item.dart';

class ItemListTileWidget extends StatelessWidget{
  final GestureTapCallback? onTap;
  final Item item;
  ItemListTileWidget({required this.item,this.onTap});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: Image.network(item.imagePath, width: 70.0),
      title: Text(
        item.name
      ),
      onTap: onTap,
    );
  }

}

class ItemListView extends StatelessWidget {
  final List<Item> items;
  ItemListView({required this.items});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: buildListItem, itemCount: items.length,);
  }

  Widget buildListItem(BuildContext context, int index) {
    return ItemListTileWidget(item: items[index]);
  }
}