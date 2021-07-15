

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/dto/box.dart';
import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/shopping_list.dart';
import 'package:stocklist_app/api/dto/shopping_task.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
import 'package:stocklist_app/entity/shopping_task.dart';
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
      owners: itemDTO.owners?.map((e) => User(id: e.id, homeId: e.homeId, name: e.name, )).toList(),
      itemQuantity: itemDTO.itemQuantity?? 0,
      description: itemDTO.description??'',
      isDisposable: itemDTO.isDisposable,
      updatedAt: itemDTO.updatedAt,
      createdAt: itemDTO.createdAt,
      categoryId: itemDTO.categoryId,
      categoryPath: itemDTO.categoryPath,
      stockExpiries: itemDTO.stockExpiries,
      boxIds: itemDTO.boxIds
    );
    addAllStockDTOs(itemDTO.stocks);
    read(itemsStateProvider.notifier).addAll([item]);

  }

  void addStockDTO(StockDTO? stockDTO) {
    if(stockDTO == null) {
      return;
    }
    final stock = Stock(
      id: stockDTO.id,
      itemId: stockDTO.itemId,
      count: stockDTO.count,
      boxId: stockDTO.boxId,
      expirationDate: stockDTO.expire?.expirationDate,
      createdAt: stockDTO.createdAt,
      updatedAt: stockDTO.updatedAt
    );
    addItemDTO(stockDTO.item);
    addBoxDTO(stockDTO.box);
    read(stocksStateProvider.notifier).add(stock);
  }

  void addBoxDTO(BoxDTO? boxDTO) {
    if(boxDTO == null) {
      return;
    }
    final box = Box(id: boxDTO.id, name: boxDTO.name, createdAt: boxDTO.createdAt, updatedAt: boxDTO.updatedAt);
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

  void addShoppingListDTO(ShoppingListDTO? dto) {
    if(dto == null) {
      return;
    }
    final tasks = dto.tasks.map((e){
      addItemDTO(e.item);
      addBoxDTO(e.box);
      return ShoppingTask(id: e.id, createdAt: e.createdAt, updatedAt: e.updatedAt, itemId: e.itemId, boxId: e.boxId, completedAt: e.completedAt, shoppingListId: e.shoppingListId, isCompleted: e.isCompleted);

    }).toList();
    User? user;
    if(dto.user != null) {
      user = User(id: dto.user!.id, homeId: dto.user!.homeId, name: dto.user!.name);
    }
    final sl = ShoppingList(
      id: dto.id,
      createdAt: dto.createdAt,
      updatedAt: dto.updatedAt,
      title: dto.title,
      userId: dto.userId,
      homeId: dto.homeId,
      isAllCompleted: dto.isAllCompleted,
      tasks: tasks,
      user: user
    );
    read(shoppingListStoreProvider.notifier).add(sl);
  }

  void addShoppingListDTOs(List<ShoppingListDTO> list) {
    list.forEach((element) {
      addShoppingListDTO(element);
    });
  }

}