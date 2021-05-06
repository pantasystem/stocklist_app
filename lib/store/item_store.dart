import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';

class ItemStore extends StateNotifier<List<Item>> {
  ItemStore(List<Item> items) : super(items);

  void addAll(List<Item> items) {

    final filtered = this.state.where((i) => !items.any((l) => i.id == l.id));
    final list = [
      ...filtered,
      ...items
    ];
    this.state = list;
  }

  void delete(Item item) async {
    // TODO 削除処理を実装する
    this.state = this.state.where((element) => element.id != item.id).toList();
  }

  void deleteAll(List<Item> items) async {
    items.forEach((element) => delete(element));
  }

  Item? get(int itemId) {
    return this.state.firstWhere((element) => element.id == itemId);
  }

  Set<Item> getAll(List<int> itemIds) {
    final sets = itemIds.toSet();
    return this.state.where((element) => sets.contains(element.id)).toSet();
  }

  Future create({ required String name, String? description, File? image, required bool isDisposable}) async{
    // TODO 実装する
  }

  Future<List<Item>> load() async {
    return [];
  }


}
