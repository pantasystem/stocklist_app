

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/item.dart';

part 'items_state.freezed.dart';

enum ItemSortSrc {
  NAME, CREATED, UPDATED
}
@freezed
class ItemsState with _$ItemsState {

  ItemsState._();
  factory ItemsState({required List<Item> items}) = _ItemsState;

  Item? get(int itemId) {
    return this.items.firstWhere((element) => element.id == itemId);
  }

  Set<Item> getAll(List<int> itemIds) {
    final sets = itemIds.toSet();
    return this.items.where((element) => sets.contains(element.id)).toSet();
  }

  List<Item> sorted({ required ItemSortSrc src, bool isReverse = false}) {
    if(src == ItemSortSrc.CREATED) {
      return this.items.sorted((a, b) => isReverse ? a.id - b.id : b.id - a.id);
    }else if(src == ItemSortSrc.UPDATED) {
      return this.items.sorted((a, b) => isReverse ? a.id - b.id : b.id - a.id);
    }else{
      return this.items.sorted((a, b) => isReverse ? a.name.compareTo(b.name) : b.name.compareTo(a.name));
    }
  }
}