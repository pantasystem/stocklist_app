

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/item.dart';

part 'items_state.freezed.dart';

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
}