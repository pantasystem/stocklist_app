import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/entity/category.dart';
import 'package:stocklist_app/widget/category_widget.dart';
import 'package:stocklist_app/main.dart';

class CategoryScreenArgs {
  final CategorySelectable? selectable;

  CategoryScreenArgs({ this.selectable });
}

class CategorySelectable {
  final int maxSelectableCount;
  final List<int> selectedCategoryIds;

  CategorySelectable({ required this.maxSelectableCount, this.selectedCategoryIds = const []});
}
class CategoryScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {

    final categories = useProvider(categoriesStateProvider).categories;

    final categoryStore = useProvider(categoriesStateProvider.notifier);


    final args = ModalRoute.of(context)?.settings.arguments as CategoryScreenArgs?;
    final List<int> selected = args?.selectable?.selectedCategoryIds?? [];

    final selectedCategoryIds = useState<Set<int>>(selected.toSet());


    useEffect((){
      Future.microtask((){
        categoryStore.fetchAll();
      });
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text("カテゴリー"),
        actions: [
          if(args?.selectable != null)
            IconButton(icon: Icon(Icons.check), onPressed: () {
              Navigator.pop(context, selectedCategoryIds.value.toList());
            })
        ],
      ),
      body: CategoryListView(
        categories: categories,
        selectedCategoryIds: selectedCategoryIds.value,
        isSelectable: args?.selectable != null,
        listener: (Category category){

          if(args?.selectable != null){
            final newList = [
              ...selectedCategoryIds.value
            ];
            if(newList.contains(category.id)) {
              newList.remove(category.id);
            }else if(newList.length < (args?.selectable?.maxSelectableCount ?? 0)){
              newList.add(category.id);
            }
            selectedCategoryIds.value = newList.toSet();
          }
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showDialog(context: context, builder: (context){
            return CategoryEditorDialog(null);
          });
        },
      ),
    );
  }


}


class CategoryEditorDialog extends HookWidget {
  final Category? category;
  CategoryEditorDialog(this.category);
  @override
  Widget build(BuildContext context) {
    final path = useTextEditingController.fromValue(TextEditingValue(text: category?.path ?? ''));
    final validationErrors = useState<ValidationException?>(null);
    final categoryStore = useProvider(categoriesStateProvider.notifier);
    void save() {
      Future task;
      if(category == null) {
        task = categoryStore.create(path.text);
      }else{
        task = categoryStore.update(category!.id, path.text);
      }
      task.then((value) => Navigator.of(context).pop()).onError((error, stackTrace){
        if(error is ValidationException) {
          validationErrors.value = error;
        }
      });
    }

    return AlertDialog(
      title: Text(category == null ? 'カテゴリーを作成' : 'カテゴリーを編集'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: path,
              decoration: InputDecoration(
                hintText: "カテゴリ名",
                errorText: validationErrors.value?.safeGetErrorMessage("path")
              ),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("やめる")
        ),
        TextButton(
          child: Text("保存"),
          onPressed: save,
        )
      ],
    );
  }
}