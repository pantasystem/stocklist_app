

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/shopping_list_detail_screen.dart';
import 'package:stocklist_app/state/shopping_list_state.dart';

class ShoppingListScreen extends HookWidget {

  Widget build(BuildContext context) {

    final shoppingListsState = useProvider(shoppingListStoreProvider);
    final shoppingListStore = useProvider(shoppingListStoreProvider.notifier);
    useEffect(()  {
      Future.microtask(() => shoppingListStore.fetchAll());
    }, const []);
    final completeList = shoppingListsState.filterByCompleted();
    final incompleteList = shoppingListsState.filterByIncomplete();

    void onShoppingListSelected(ShoppingList list) {
      Navigator.of(context).pushNamed('/shopping-lists', arguments: ShoppingListDetailScreenArgs(list.id));
    }
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('買い物リスト'),
          bottom: TabBar(
            tabs: [
              Tab(child: Text('未達成'),),
              Tab( child: Text('達成済み'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {

          },
        ),
        body: TabBarView(
          children: [
            ShoppingListsView(incompleteList, onShoppingListSelected),
            ShoppingListsView(completeList, onShoppingListSelected),
          ],
        ),
      ),
    );
  }
}

typedef OnShoppingListSelected = Function(ShoppingList);

class ShoppingListsView extends StatelessWidget {

  final List<ShoppingList> lists;
  final OnShoppingListSelected onShoppingListSelected;
  ShoppingListsView(this.lists, this.onShoppingListSelected);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ShoppingListListTile(lists[index], () {
          onShoppingListSelected(lists[index]);
        });
      },
      itemCount: lists.length,
    );
  }
}

class ShoppingListListTile extends StatelessWidget{
  final ShoppingList shoppingList;
  final VoidCallback onTap;

  ShoppingListListTile(this.shoppingList, this.onTap);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(shoppingList.title),
      subtitle: Text("タスク数:${shoppingList.tasks.length}, 達成済み:${shoppingList.tasks.where((element) => element.isCompleted).length}"),
      onTap: onTap,
    );
  }
}