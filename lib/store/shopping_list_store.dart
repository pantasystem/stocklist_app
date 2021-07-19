

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/shopping_list_state.dart';

class ShoppingListStore extends StateNotifier<ShoppingListsState> {
  ShoppingListStore(this.read) : super(ShoppingListsState(shoppingLists: const []));

  Reader read;


  void replaceAll(List<ShoppingList> lists) {
    this.state = this.state.copyWith(shoppingLists: lists);
  }

  void add(ShoppingList sl) {
    final index = this.state.shoppingLists.indexWhere((element) => element.id == sl.id);
    if(index == -1) {
      this.state = this.state.copyWith(
        shoppingLists: [
          ...this.state.shoppingLists,
          sl
        ]
      );
    }else{
      final l = [
        ...this.state.shoppingLists,
      ];
      l[index] = sl;
      this.state = this.state.copyWith(
          shoppingLists:l
      );
    }
  }

  void addAll(List<ShoppingList> lists) {
    lists.forEach((element) {
      add(element);
    });
  }

  Future fetchAll() async{
    final list = await stocklistClient.shoppingListAPI.all();
    read(storeAdder).addShoppingListDTOs(list);
  }

  Future fetch(int id) async{
    final sl = await stocklistClient.shoppingListAPI.show(id);
    read(storeAdder).addShoppingListDTO(sl);
  }

  Future create({required String title, required int? userId}) async {
    final res = await stocklistClient.shoppingListAPI.create(title: title, userId: userId);
    read(storeAdder).addShoppingListDTO(res);
  }

  Future update(int id, {required String title, required int? userId}) async {
    final res = await stocklistClient.shoppingListAPI.update(id, title: title, userId: userId);
    await fetch(id);
  }

  Future createTask({required int itemId}) async {

  }

  Future completeTask(int shoppingListId, int taskId) async {
    await stocklistClient.shoppingListAPI.tasks(shoppingListId).complete(taskId);
    await fetch(shoppingListId);
  }

  Future incompleteTask(int shoppingListId, int taskId) async {
    await stocklistClient.shoppingListAPI.tasks(shoppingListId).incomplete(taskId);
    await fetch(shoppingListId);
  }
}