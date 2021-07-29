import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/screen/item_detail_screen.dart';
import 'package:stocklist_app/widget/item_category_chip.dart';

typedef OnItemSelected = Function(int index, Item item);
typedef OnCategorySelected = Function(int);
typedef OnItemAction = Function(Item, ItemAction);

class ItemListTileWidget extends StatelessWidget{

  final Item item;
  final OnCategorySelected? onCategorySelected;
  final VoidCallback? onTap;
  final bool isSelected;
  final Widget? trailing;
  ItemListTileWidget({required this.item, this.onCategorySelected, this.onTap, this.isSelected = false, this.trailing});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(4),
        child: ItemThumbnail(
            this.item.imageUrl,
            70.0
        ),
      ),
      title: Row(
        children: [
          Text(
              item.name,
            style: TextStyle(
              fontSize: 24
            ),
          ),
          if(this.item.categoryPath != null)
            Container(
              child: ItemCategoryChip(this.item.categoryPath!, (){
                onCategorySelected?.call(this.item.categoryId!);
              }),
              margin: EdgeInsets.only(left: 4),
            )
        ],
      ),
      subtitle: Text("総数:${item.itemQuantity}"),
      trailing: this.trailing,
      onTap: onTap,
      /*onTap: (){
        Navigator.of(context).pushNamed("/items/show", arguments: ItemArgs(item.id));
      }*/
      selected: this.isSelected,
    );
  }

}
enum ItemAction {
  USED, ADD_SHOPPING_LIST
}
class ItemListView extends StatelessWidget {
  final List<Item> items;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final OnCategorySelected? onCategorySelected;
  final OnItemSelected? onItemSelected;
  final List<int> selectedItemIds;
  final OnItemAction? onItemAction;
  ItemListView({
    required this.items, this.physics, this.shrinkWrap = false, this.onCategorySelected, this.onItemSelected, this.selectedItemIds = const [], this.onItemAction});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: buildListItem,
      itemCount: items.length,
      physics: physics,
      shrinkWrap: shrinkWrap,
    );
  }

  Widget? buildTrailing(int index) {
    if(onItemAction == null) {
      return null;
    }
    return PopupMenuButton<ItemAction>(
      icon: Icon(Icons.more_vert),
      onSelected: (v) {
        onItemAction?.call(items[index], v);
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: ItemAction.ADD_SHOPPING_LIST,
            child: Row(
              children: [
                Icon(Icons.add),
                Text('買い物リスト')
              ],
            ),
          ),
          PopupMenuItem(
            value: ItemAction.USED,
            child: Row(
              children: [
                Icon(Icons.remove),
                Text('使った')
              ],
            ),
          ),
        ];
      },
    );
  }
  Widget buildListItem(BuildContext context, int index) {
    return ItemListTileWidget(
      item: items[index],
      onCategorySelected: this.onCategorySelected,
      onTap: onItemSelected == null ? null : () {
        onItemSelected?.call(index, items[index]);
      },
      isSelected: selectedItemIds.any((element) => element == items[index].id),
      trailing: buildTrailing(index)
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
          ItemThumbnail(item.imageUrl, 70.0),
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

class ItemCardView extends HookWidget {

  final Item item;
  ItemCardView({required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          Container(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image(
                image: NetworkImage(
                  item.imageUrl,
                ),
                  errorBuilder: (BuildContext context, e, s) {
                    return Image.asset("images/no_image_500.png");
                  },
                fit: BoxFit.fitWidth
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                ItemLargeNameWidget(name: item.name)
              ],
            ),
            padding: EdgeInsets.all(4),
            alignment: Alignment.topLeft,
          )
        ],
      ),
    );
  }
}

class ItemLargeNameWidget extends StatelessWidget {
  final String name;

  ItemLargeNameWidget({required this.name});
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 24
      ),
    );

  }
}

class ItemThumbnail extends StatelessWidget {
  final String url;
  final double size;
  ItemThumbnail(this.url, this.size);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      width: this.size,
      height: this.size,
      fit: BoxFit.cover,
      errorBuilder: (BuildContext context, e, s) {
        return Image.asset("images/no_image_500.png", width: size, height: size, fit: BoxFit.cover,);
      }
    );
  }
}