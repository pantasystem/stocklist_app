// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingTaskDTO _$_$_ShoppingTaskDTOFromJson(Map<String, dynamic> json) {
  return _$_ShoppingTaskDTO(
    id: json['id'] as int,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    itemId: json['itemId'] as int,
    boxId: json['boxId'] as int?,
    box: json['box'] == null
        ? null
        : BoxDTO.fromJson(json['box'] as Map<String, dynamic>),
    item: json['item'] == null
        ? null
        : ItemDTO.fromJson(json['item'] as Map<String, dynamic>),
    completedAt: json['completedAt'] == null
        ? null
        : DateTime.parse(json['completedAt'] as String),
    shoppingListId: json['shoppingListId'] as int,
    isCompleted: json['isCompleted'] as bool,
  );
}

Map<String, dynamic> _$_$_ShoppingTaskDTOToJson(_$_ShoppingTaskDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'itemId': instance.itemId,
      'boxId': instance.boxId,
      'box': instance.box,
      'item': instance.item,
      'completedAt': instance.completedAt?.toIso8601String(),
      'shoppingListId': instance.shoppingListId,
      'isCompleted': instance.isCompleted,
    };
