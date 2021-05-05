import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';

class ItemMutation extends StateNotifier<List<Item>> {
  ItemMutation(List<Item> items) : super(items);

  void addAll(List<Item> items) {

    final filtered = this.state.where((i) => !items.any((l) => i.id == l.id));
    final list = [
      ...filtered,
      ...items
    ];
    this.state = list;
  }

  void delete(Item item) {
    this.state = this.state.where((element) => element.id != item.id).toList();
  }

  void deleteAll(List<Item> items) {
    this.state = this.state.where((i) => !items.any((j) => i.id == j.id)).toList();
  }

  Item? get(int itemId) {
    return this.state.firstWhere((element) => element.id == itemId);
  }

  Set<Item> getAll(List<int> itemIds) {
    final sets = itemIds.toSet();
    return this.state.where((element) => sets.contains(element.id)).toSet();
  }



}

class ItemAction {

  Future<List<Item>> load() async {
    return [];
  }

}