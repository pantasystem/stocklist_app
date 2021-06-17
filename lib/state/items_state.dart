

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/filter/item_filter.dart';

part 'items_state.freezed.dart';

enum ItemSortSrc {
  NAME, CREATED, UPDATED, QUANTITY
}
@freezed
class ItemsState with _$ItemsState {

  ItemsState._();
  factory ItemsState({required List<Item> items}) = _ItemsState;

  Item? get(int itemId) {
    return this.items.firstWhere((element) => element.id == itemId);
  }

  Item? safeGet(int? itemId) {
    if(itemId == null) {
      return null;
    }
    this.items.firstWhereOrNull((element) => element.id == itemId);
  }

  Set<Item> getAll(List<int> itemIds) {
    final sets = itemIds.toSet();
    return this.items.where((element) => sets.contains(element.id)).toSet();
  }

  List<Item> sorted({ required ItemSortSrc src, bool isReverse = false}) {
    if(src == ItemSortSrc.CREATED) {
      return this.items.sorted((a, b) => isReverse ? b.id.compareTo(a.id) : a.id.compareTo(b.id));
    }else if(src == ItemSortSrc.UPDATED) {
      return this.items.sorted((a, b) => isReverse ? b.updatedAt.compareTo(a.updatedAt) : a.updatedAt.compareTo(b.updatedAt));
    }else if(src == ItemSortSrc.NAME){
      return this.items.sorted((a, b) => isReverse ? b.name.compareTo(a.name) : a.name.compareTo(b.name));
    }else{
      return this.items.sorted((a, b) => isReverse ? b.itemQuantity.compareTo(a.itemQuantity) : a.itemQuantity.compareTo(b.itemQuantity));
    }
  }

  List<Item> filterAndSort({required ItemFilter filter, required ItemSortSrc src, bool isReverse = false}) {
    return _sorted(filter.filter(this.items), src: src, isReverse: isReverse);
  }

  List<Item> _sorted(List<Item> items, { required ItemSortSrc src, bool isReverse = false}) {
    if(src == ItemSortSrc.CREATED) {
      return items.sorted((a, b) => isReverse ? b.id.compareTo(a.id) : a.id.compareTo(b.id));
    }else if(src == ItemSortSrc.UPDATED) {
      return items.sorted((a, b) => isReverse ? b.updatedAt.compareTo(a.updatedAt) : a.updatedAt.compareTo(b.updatedAt));
    }else if(src == ItemSortSrc.NAME){
      return items.sorted((a, b) => isReverse ? b.name.compareTo(a.name) : a.name.compareTo(b.name));
    }else{
      return items.sorted((a, b) => isReverse ? b.itemQuantity.compareTo(a.itemQuantity) : a.itemQuantity.compareTo(b.itemQuantity));
    }
  }
}