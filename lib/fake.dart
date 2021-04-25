
import 'package:stocklist_app/entity/node.dart';
import 'package:stocklist_app/entity/node_type.dart';

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
    final type;
    if(i <= count) {
      type = makeNodeType(id: 1, name: "room");
    }else{
      type = makeNodeType(id: 2, name: "box");
    }
    newItems.add(Node(id: i, name: "node-name:" + i.toString(), path: (currentNode?.path?? "") + "/" + i.toString(), type: type));
  }
  list.addAll(newItems);

  newItems.forEach((element) {
    makeNodes(level: level - 1, count: count, list: list, currentNode: element);
  });
  return list;
}

NodeType makeNodeType({int id = 1, String name = "room"}) {
  return NodeType(id: id, name: name, homeId: 1, createdAt: DateTime.now());
}