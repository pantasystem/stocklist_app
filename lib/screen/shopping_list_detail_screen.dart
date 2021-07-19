
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/shopping_list.dart';
import 'package:stocklist_app/entity/shopping_task.dart';
import 'package:stocklist_app/main.dart';
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
        return TasksView(shoppingList.tasks, onTaskCompleteChanged);
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
      appBar: AppBar(),
      body: buildTaskList(),
    );
  }
}

typedef OnTaskToggleComplete = Function(ShoppingTask);

class TasksView extends StatelessWidget {
  final List<ShoppingTask> tasks;
  final OnTaskToggleComplete onTaskToggleComplete;
  TasksView(this.tasks, this.onTaskToggleComplete);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskListTile(tasks[index], () { }, (v) { onTaskToggleComplete(tasks[index]);});
      },
      itemCount: tasks.length,
    );

  }
}

class TaskListTile extends HookWidget {
  final ShoppingTask task;
  final VoidCallback onTap;
  final ValueChanged onChanged;
  TaskListTile(this.task, this.onTap, this.onChanged);
  Widget build(BuildContext context) {
    final Item item = useProvider(itemsStateProvider).get(task.itemId);
    return ListTile(
      title: Text(item.name),
      leading: ItemThumbnail(item.imageUrl, 40),
      trailing: Checkbox(onChanged: onChanged, value: task.isCompleted,),
      subtitle: Row(
        children: [
          Text("必要個数:${task.count}")
        ],
      ),
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