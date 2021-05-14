import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/store/stock_store.dart';

class ItemStore extends StateNotifier<List<Item>> {
  ItemStore(List<Item> items, this.reader) : super(items);


  final Reader reader;

  void addAll(List<Item> items) {

    final filtered = this.state.where((i) => !items.any((l) => i.id == l.id));
    final list = [
      ...filtered,
      ...items
    ];
    this.state = list;
  }

  void remove(Item item) async {
    // TODO 削除処理を実装する
    this.state = this.state.where((element) => element.id != item.id).toList();
  }

  void deleteAll(List<Item> items) async {
    items.forEach((element) => remove(element));
  }

  Item? get(int itemId) {
    return this.state.firstWhere((element) => element.id == itemId);
  }

  Set<Item> getAll(List<int> itemIds) {
    final sets = itemIds.toSet();
    return this.state.where((element) => sets.contains(element.id)).toSet();
  }

  Future create({ required String name, String? description, required File image, required bool isDisposable}) async{
    final created = await stocklistClient.itemAPI.create(name: name, isDisposable: isDisposable, image: image);
    reader(storeAdder).addItemDTO(created);
  }


  Future fetchAll() async {
    print("fetchAllします。");
    final itemDTOList = await stocklistClient.itemAPI.all();
    print("fetchAll完了しました");
    print(itemDTOList);
    reader(storeAdder).addAllItemDTOs(itemDTOList);
  }

  Future fetch(int itemId) async {
    final itemDTO = await stocklistClient.itemAPI.show(itemId);
    reader(storeAdder).addItemDTO(itemDTO);
  }


}
