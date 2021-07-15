
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shopping_task.freezed.dart';
@freezed
class ShoppingTask with _$ShoppingTask {
  factory ShoppingTask({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int itemId,
    required int? boxId,
    required DateTime? completedAt,
    required int shoppingListId,
    required bool isCompleted,
    required int count,

  }) = _ShoppingTask;
}