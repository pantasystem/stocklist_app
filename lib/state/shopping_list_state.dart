

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
part 'shopping_list_state.freezed.dart';

@freezed
class ShoppingListsState with _$ShoppingListsState{
  const ShoppingListsState._();
  factory ShoppingListsState({required List<ShoppingList> shoppingLists}) = _ShoppingListsState;

  ShoppingList get(int id) {
    return this.shoppingLists.firstWhere((element) => element.id == id);
  }

  ShoppingList? safeGet(int? id) {
    return this.shoppingLists.firstWhereOrNull((element) => element.id == id);
  }


  List<ShoppingList> filterByCompleted() {
    return this.shoppingLists.where((element) => element.isAllCompleted && element.tasks.isNotEmpty).toList();
  }

  List<ShoppingList> filterByIncomplete() {
    return this.shoppingLists.whereNot((element) => element.isAllCompleted && element.tasks.isNotEmpty).toList();
  }
}