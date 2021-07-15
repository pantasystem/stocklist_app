
import 'package:freezed_annotation/freezed_annotation.dart';

import 'box.dart';
import 'item.dart';
part 'shopping_task.freezed.dart';
part 'shopping_task.g.dart';
@freezed
class ShoppingTaskDTO with _$ShoppingTaskDTO {
  factory ShoppingTaskDTO({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int itemId,
    required int? boxId,
    required BoxDTO? box,
    required ItemDTO? item,
    required DateTime? completedAt,
    required int shoppingListId,
    required bool isCompleted,

  }) = _ShoppingTaskDTO;

  factory ShoppingTaskDTO.fromJson(Map<String, dynamic> json) => _$ShoppingTaskDTOFromJson(json);

}