
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/category.dart';

part 'categories_state.freezed.dart';
@freezed
class CategoriesState with _$CategoriesState {
  factory CategoriesState({required List<Category> categories }) = _CategoriesState;
  CategoriesState._();

  Category get(int categoryId) {
    return this.categories.firstWhere((category)=> categoryId == category.id);
  }

  Category getByPath(String path) {
    return this.categories.firstWhere((element) => element.path == path);
  }

  Category? safeGet(int? categoryId) {
    return this.categories.firstWhereOrNull((element) => element.id == categoryId);
  }

  List<Category> childrenCategories(String path) {
    return this.categories.where((element) => element.path.startsWith(path)).toList();
  }
}