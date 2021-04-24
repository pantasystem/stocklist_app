
import 'package:flutter/cupertino.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/node.dart';
import 'package:stocklist_app/widget/item_widget.dart';
import 'package:stocklist_app/widget/node_widget.dart';

class NodeAndItemListView extends StatelessWidget {

  final List<Item> items;
  final List<Node> nodes;

  NodeAndItemListView({required this.items, required this.nodes});


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        if(index <nodes.length) {
          return NodeListTile(node: nodes[index]);
        }else{
          return ItemListTileWidget(item: items[index - nodes.length]);
        }
      },
      itemCount: items.length + nodes.length,
    );
  }
}

