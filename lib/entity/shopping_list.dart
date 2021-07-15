
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/shopping_task.dart';
part 'shopping_list.freezed.dart';

@freezed
class ShoppingList with _$ShoppingList {
  factory ShoppingList({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String title,
    required int? userId,
    required int homeId,
    required bool isAllCompleted,
    required List<ShoppingTask> tasks,
    required User? user,
  }) = _ShoppingList;
}