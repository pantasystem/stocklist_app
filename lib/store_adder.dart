

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/dto/box.dart';
import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:stocklist_app/api/dto/user.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/entity/user.dart';
import 'package:stocklist_app/main.dart';

/// メソッド同士で呼び出し合いながらStoreにデータを注入していくためのクラス
class StoreAdder {
  Reader read;

  StoreAdder(this.read);

  void addItemDTO(ItemDTO? itemDTO) {
    if(itemDTO == null) {
      return;
    }
    final item = Item(
      id: itemDTO.id, 
      name: itemDTO.name, 
      imagePath: itemDTO.imagePath, 
      homeId: itemDTO.homeId, 
      stockIds: itemDTO.stockIds,
      imageUrl: itemDTO.imageUrl,
      owners: itemDTO.owners?.map((e) => User(id: e.id, homeId: e.homeId, name: e.name, )).toList()
    );
    addAllStockDTOs(itemDTO.stocks);
    read(itemsStateProvider.notifier).addAll([item]);

  }

  void addStockDTO(StockDTO? stockDTO) {
    if(stockDTO == null) {
      return;
    }
    final stock = Stock(id: stockDTO.id, itemId: stockDTO.itemId, count: stockDTO.count, boxId: stockDTO.boxId);
    addItemDTO(stockDTO.item);
    addBoxDTO(stockDTO.box);
    read(stocksStateProvider.notifier).add(stock);
  }

  void addBoxDTO(BoxDTO? boxDTO) {
    if(boxDTO == null) {
      return;
    }
    final box = Box(id: boxDTO.id, name: boxDTO.name);
    read(boxesStateProvider.notifier).add(box);
  }

  void addAllItemDTOs(List<ItemDTO>? itemDTOs) {
    itemDTOs?.forEach((element) {
      addItemDTO(element);
    });
  }

  void addAllStockDTOs(List<StockDTO>? stockDTOs) {
    stockDTOs?.forEach((element) { 
      addStockDTO(element);
    });
  }
  
  void addAllBoxDTOs(List<BoxDTO>? boxDTOs) {
    boxDTOs?.forEach((element) {
      addBoxDTO(element);
    });
  }

}