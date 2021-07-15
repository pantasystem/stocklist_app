// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingTaskDTO _$_$_ShoppingTaskDTOFromJson(Map<String, dynamic> json) {
  return _$_ShoppingTaskDTO(
    id: json['id'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
    itemId: json['item_id'] as int,
    boxId: json['box_id'] as int?,
    box: json['box'] == null
        ? null
        : BoxDTO.fromJson(json['box'] as Map<String, dynamic>),
    item: json['item'] == null
        ? null
        : ItemDTO.fromJson(json['item'] as Map<String, dynamic>),
    completedAt: json['completed_at'] == null
        ? null
        : DateTime.parse(json['completed_at'] as String),
    shoppingListId: json['shopping_list_id'] as int,
    isCompleted: json['is_completed'] as bool,
  );
}

Map<String, dynamic> _$_$_ShoppingTaskDTOToJson(_$_ShoppingTaskDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'item_id': instance.itemId,
      'box_id': instance.boxId,
      'box': instance.box,
      'item': instance.item,
      'completed_at': instance.completedAt?.toIso8601String(),
      'shopping_list_id': instance.shoppingListId,
      'is_completed': instance.isCompleted,
    };
