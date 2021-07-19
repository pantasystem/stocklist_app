

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/shopping_list_detail_screen.dart';

class ShoppingListEditorArgs {
  final ShoppingList? shoppingList;
  ShoppingListEditorArgs(this.shoppingList);
}
class ShoppingListEditorScreen extends HookWidget {

  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ShoppingListEditorArgs;
    final title = useTextEditingController.fromValue(TextEditingValue(text: args.shoppingList?.title?? ''));
    final userId = useState<int?>(args.shoppingList?.userId);
    final shoppingListId = useState<int?>(args.shoppingList?.id);
    final ShoppingList? shoppingList = useProvider(shoppingListStoreProvider).safeGet(shoppingListId.value);
    final shoppingListStore = useProvider(shoppingListStoreProvider.notifier);
    final errors = useState<ValidationException?>(null);

    return Scaffold(
      appBar: AppBar(
        title: Text(shoppingList == null ? 'ショッピングリストを作成' : 'ショッピングリストを編集')
      ),
      body: ListView(
        children: [
          Text('ショッピングリスト名'),
          TextField(
            controller: title,
            decoration: InputDecoration(
              hintText: 'ショッピングリスト名'
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: false,
            itemBuilder: (BuildContext context, int position) {
              final task = shoppingList!.tasks[position];
              return TaskListTile(
                task,
                () {

                },
                (value){
                  if(task.isCompleted) {
                    shoppingListStore.incompleteTask(task.shoppingListId, task.id);
                  }else{
                    shoppingListStore.completeTask(task.shoppingListId, task.id);
                  }
                }
              );
            },
            itemCount: shoppingList?.tasks.length ?? 0,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
          onPressed: () {
            if(shoppingList == null) {

            }else{

            }
          }
      )
    );
  }
}