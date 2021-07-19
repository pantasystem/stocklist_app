
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
import 'package:stocklist_app/entity/shopping_task.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/item_screen.dart';
import 'package:stocklist_app/widget/item_widget.dart';

class ShoppingListDetailScreenArgs{
  final int shoppingListId;
  ShoppingListDetailScreenArgs(this.shoppingListId);
}
class ShoppingListDetailScreen extends HookWidget {
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ShoppingListDetailScreenArgs;
    final ShoppingList? shoppingList = useProvider(shoppingListStoreProvider).safeGet(args.shoppingListId);
    final shoppingListStore = useProvider(shoppingListStoreProvider.notifier);
    final loadError = useState<Exception?>(null);
    final isLoading = useState<bool>(true);
    final editMode = useState<bool>(false);
    useEffect(() {
      Future.microtask(() => shoppingListStore.fetch(args.shoppingListId)
          .onError((Exception error, stackTrace) => loadError.value  = error)
          .whenComplete(() => isLoading.value = false));
    }, const []);

    void onTaskCompleteChanged(ShoppingTask task) {
      if(task.isCompleted) {
        shoppingListStore.incompleteTask(task.shoppingListId, task.id);
      }else{
        shoppingListStore.completeTask(task.shoppingListId, task.id);
      }
    }
    Widget buildTaskList() {
      if(shoppingList != null && shoppingList.tasks.isNotEmpty) {
        return TasksView(
          shoppingList.tasks, onTaskCompleteChanged,
          editMode: editMode.value,
          onCountChanged: (ShoppingTask task, int count) {
            shoppingListStore.updateTaskCount(task, count);
          },
        );
      }

      if(!isLoading.value && loadError.value != null) {
        return Center(
          child: Text('読み込みエラー'),
        );
      }

      if(!isLoading.value && shoppingList?.tasks.isEmpty == true) {
        return Center(
          child: Text('タスクが一つも登録されていません'),
        );
      }

      return CircleProgress();


    }
    return Scaffold(
      appBar: AppBar(
        title: Text(shoppingList == null ? '買い物リスト' : shoppingList.title),
        actions: [
          if(!editMode.value)
            IconButton(icon: Icon(Icons.create), onPressed: () {
              editMode.value = true;
            }),
          if(editMode.value)
            IconButton(icon: Icon(Icons.check), onPressed: () {
              editMode.value = false;
            })
        ],
      ),
      body: buildTaskList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          // アイテムを選択しに行く
          final selected = Navigator.of(context).pushNamed('/items',
            arguments: ItemScreenArgs(
              selectable: ItemSelectable(
                selectedItemIds: shoppingList?.tasks.map((e) => e.itemId).toList() ?? [], max: 1000,
              )
            )
          );
        },
      ),
    );
  }
}

typedef OnTaskToggleComplete = Function(ShoppingTask);
typedef OnCountChanged = Function(ShoppingTask, int);

class TasksView extends StatelessWidget {
  final List<ShoppingTask> tasks;
  final OnTaskToggleComplete onTaskToggleComplete;
  final bool editMode;
  final OnCountChanged? onCountChanged;
  TasksView(this.tasks, this.onTaskToggleComplete, {this.editMode = false, this.onCountChanged});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(
          tasks[index],
          () { },
          (v) { onTaskToggleComplete(tasks[index]);},
          editMode: editMode,
          onCountChanged: onCountChanged,

        );
      },
      itemCount: tasks.length,
    );

  }
}

class TaskListTile extends HookWidget {
  final ShoppingTask task;
  final VoidCallback onTap;
  final ValueChanged onChanged;
  final bool editMode;
  final GestureLongPressCallback? onLongPress;
  final OnCountChanged? onCountChanged;
  TaskListTile(this.task, this.onTap, this.onChanged, { this.editMode = false, this.onLongPress, this.onCountChanged });
  Widget buildTrailing(Item item) {
    final count = task.count >= 100 ? task.count : 100;
    if(editMode) {
      return DropdownButton<int>(
        value: task.count,
        items: <int>[for(int i = 0; i <= count; i++) i].map((e){
          return DropdownMenuItem(child: Text(e.toString()), value: e,);
        }).toList(),
        onChanged: (i) {
          if(i != null) {
            onCountChanged?.call(task, i);
          }
        }
      );
    }
    return Checkbox(onChanged: onChanged, value: task.isCompleted,);
  }
  Widget build(BuildContext context) {
    final Item item = useProvider(itemsStateProvider).get(task.itemId);
    return ListTile(
      title: Text(item.name),
      leading: ItemThumbnail(item.imageUrl, 40),
      trailing: buildTrailing(item),
      subtitle: Row(
        children: [
          Text("必要個数:${task.count}")
        ],
      ),
      onLongPress: onLongPress,
    );
  }
}

class CircleProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:CircularProgressIndicator()
    );
  }

}