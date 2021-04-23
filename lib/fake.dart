
import 'package:stocklist_app/entity/node.dart';

import 'entity/item.dart';

List<Item> makeItems({int count =  50, required int homeId, int? nodeId}) {
  return [
    for(int i = 0; i < count; i ++)
      Item(id: i, name: "item" + i.toString(), imagePath: "https://pbs.twimg.com/media/Ey_PANGVoAEhGjK?format=jpg&name=large", homeId: homeId, nodeId: nodeId)
  ];
}

List<Node> makeNodes({int level = 3, int count = 4,List<Node>? list, Node? currentNode}) {
  if(level <= 0) {
    return list ?? [];
  }
  list = list?? [];
  final List<Node> newItems = [];
  for(int i = list.length; i < list.length + count; i ++) {
    newItems.add(Node(id: i, name: "node-name:" + i.toString(), path: (currentNode?.path?? "") + "/" + i.toString()));
  }
  list.addAll(newItems);

  newItems.forEach((element) {
    makeNodes(level: level - 1, count: count, list: list, currentNode: element);
  });
  return list;
}