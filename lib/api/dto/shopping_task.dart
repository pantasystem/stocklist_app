
import 'package:freezed_annotation/freezed_annotation.dart';

import 'box.dart';
import 'item.dart';
part 'shopping_task.freezed.dart';
part 'shopping_task.g.dart';
@freezed
class ShoppingTaskDTO with _$ShoppingTaskDTO {
  factory ShoppingTaskDTO({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'item_id') required int itemId,
    @JsonKey(name: 'box_id') required int? boxId,
    @JsonKey(name: 'box') required BoxDTO? box,
    @JsonKey(name: 'item') required ItemDTO? item,
    @JsonKey(name: 'completed_at') required DateTime? completedAt,
    @JsonKey(name: 'shopping_list_id') required int shoppingListId,
    @JsonKey(name: 'is_completed') required bool isCompleted,
    @JsonKey(name: 'count') required int? count

  }) = _ShoppingTaskDTO;

  factory ShoppingTaskDTO.fromJson(Map<String, dynamic> json) => _$ShoppingTaskDTOFromJson(json);

}