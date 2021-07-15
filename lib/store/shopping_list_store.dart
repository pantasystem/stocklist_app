

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
import 'package:stocklist_app/state/shopping_list_state.dart';

class ShoppingListStore extends StateNotifier<ShoppingListsState> {
  ShoppingListStore() : super(ShoppingListsState(shoppingLists: const []));

  void replaceAll(List<ShoppingList> lists) {
    this.state = this.state.copyWith(shoppingLists: lists);
  }

  void add(ShoppingList sl) {

  }

  void addAll(List<ShoppingList> lists) {

  }

  Future fetchAll() async{

  }

  Future fetch(int id) async{

  }

  Future create() async {

  }

  Future update() async {

  }
}