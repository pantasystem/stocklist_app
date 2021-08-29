

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/category.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/categories_state.dart';

class CategoryStore extends StateNotifier<CategoriesState> {
  CategoryStore() : super(CategoriesState(categories: []));

  void replaceAll(List<Category> list) {
    this.state = this.state.copyWith(categories: list);
  }

  void remove(int categoryId) {
    this.state = this.state.copyWith(
      categories: this.state.categories.where((element) => element.id != categoryId).toList()
    );
  }

  void add(Category category) {
    final state = this.state;
    final index = state.categories.indexWhere((element) => element.id == category.id);
    if(index == -1) {
      this.state = state.copyWith(
        categories: [
          ...state.categories,
          category
        ]
      );
    }else{
      final newList = [
        ...state.categories
      ];
      newList[index] = category;
      this.state = state.copyWith(
        categories: newList
      );
    }
  }

  Future fetchAll() async{
    final categories = await stocklistClient.categoryAPI.all();
    this.replaceAll(categories);
  }

  Future delete(int categoryId) async {
    await stocklistClient.categoryAPI.delete(categoryId);
    remove(categoryId);
  }

  Future create(String path) async {
    final created = await stocklistClient.categoryAPI.create(path);
    this.add(created);
  }

  Future update(int categoryId, String path) async {
    await stocklistClient.categoryAPI.update(categoryId, path: path);
    final category = this.state.get(categoryId);
    this.add(category.copyWith(path: path));
  }

  void clear() {
    this.replaceAll([]);
  }
}