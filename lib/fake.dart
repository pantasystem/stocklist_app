

import 'package:stocklist_app/entity/box.dart';

import 'entity/item.dart';

List<Item> makeItems({int count =  50, required int homeId}) {
  return [
    for(int i = 0; i < count; i ++)
      Item(id: i, name: "item" + i.toString(), imagePath: "https://pbs.twimg.com/media/Ey_PANGVoAEhGjK?format=jpg&name=large", homeId: homeId)
  ];
}


List<Box> makeBoxes({int count = 20}) {
  return [
    for(int i = 0; i < count; i ++)
      Box(id: i, name: "box-" + count.toString())
  ];
}