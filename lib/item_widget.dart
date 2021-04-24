import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/item.dart';

typedef OnSelectItemCallback = Function(int index, Item item);

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
  final OnSelectItemCallback? callback;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  ItemListView({required this.items, this.callback, this.physics, this.shrinkWrap = false});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: buildListItem,
      itemCount: items.length,
      physics: physics,
      shrinkWrap: shrinkWrap,
    );
  }

  Widget buildListItem(BuildContext context, int index) {
    return ItemListTileWidget(
      item: items[index],
      onTap: (){
        callback?.call(index, items[index]);
      },
    );
  }
}

class ItemGridWidget extends StatelessWidget {
  final Item item;
  ItemGridWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
      child: Column(
        children: [
          Image.network(item.imagePath),
          Text(item.name)
        ],
      ),
    );
  }
}

class ItemsGridView extends StatelessWidget {
  final List<Item> items;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  ItemsGridView({required this.items, this.physics, this.shrinkWrap = false});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ItemGridWidget(item: items[index]);
      },
      itemCount: items.length,
      shrinkWrap: shrinkWrap,
      physics: physics,
    );
  }
}