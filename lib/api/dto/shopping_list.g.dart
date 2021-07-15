// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingListDTO _$_$_ShoppingListDTOFromJson(Map<String, dynamic> json) {
  return _$_ShoppingListDTO(
    id: json['id'] as int,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    title: json['title'] as String,
    userId: json['userId'] as int?,
    homeId: json['homeId'] as int,
    user: json['user'] == null
        ? null
        : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
    isAllCompleted: json['isAllCompleted'] as bool,
    tasks: (json['tasks'] as List<dynamic>)
        .map((e) => ShoppingTaskDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ShoppingListDTOToJson(_$_ShoppingListDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'title': instance.title,
      'userId': instance.userId,
      'homeId': instance.homeId,
      'user': instance.user,
      'isAllCompleted': instance.isAllCompleted,
      'tasks': instance.tasks,
    };
