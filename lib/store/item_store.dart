import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/items_state.dart';

class ItemStore extends StateNotifier<ItemsState> {
  ItemStore(List<Item> items, this.reader) : super(ItemsState(items: []));


  final Reader reader;

  void addAll(List<Item> items) {

    final filtered = this.state.items.where((i) => !items.any((l) => i.id == l.id));
    final list = [
      ...filtered,
      ...items
    ];
    this.state = this.state.copyWith(items: list);
  }

  void remove(Item item) async {
    this.state = this.state.copyWith(
      items: this.state.items.where((element) => element.id != item.id).toList()
    );
  }

  void deleteAll(List<Item> items) async {
    items.forEach((element) => remove(element));
  }



  Future<Item> create({ required String name, String? description, required File? image, required bool isDisposable, required int? categoryId}) async{
    final created = await stocklistClient.itemAPI.create(name: name, isDisposable: isDisposable, image: image, description: description, categoryId: categoryId);
    reader(storeAdder).addItemDTO(created);
    return this.state.get(created.id)!;
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

  void clear() {
    this.state = ItemsState(items: []);
  }


}
