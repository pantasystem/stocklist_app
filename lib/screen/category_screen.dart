import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/display_type.dart';
import 'package:stocklist_app/entity/category.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/widget/category_widget.dart';
import 'package:stocklist_app/widget/item_widget.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/widget/display_type.dart';

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
    );
  }




}