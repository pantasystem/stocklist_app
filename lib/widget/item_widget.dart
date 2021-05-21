import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/screen/item_detail_screen.dart';

typedef OnSelectItemCallback = Function(int index, Item item);

class ItemListTileWidget extends StatelessWidget{

  final Item item;
  ItemListTileWidget({required this.item});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: Image.network(
        item.imageUrl,
        width: 70.0,
        errorBuilder: (BuildContext context, e, s) {
          return Image.asset("images/no_image_500.png", width: 70.0);
        },
      ),
      title: Text(
        item.name
      ),
      onTap: (){
        Navigator.of(context).pushNamed("/items/show", arguments: ItemArgs(item.id));
      },
    );
  }

}

class ItemListView extends StatelessWidget {
  final List<Item> items;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  ItemListView({
    required this.items, this.physics, this.shrinkWrap = false});
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
          Image.network(
            item.imageUrl,
            errorBuilder: (BuildContext context, e, s) {
              return Image.asset("images/no_image_500.png");
            },
          ),
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