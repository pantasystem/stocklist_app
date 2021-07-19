// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingListDTO _$_$_ShoppingListDTOFromJson(Map<String, dynamic> json) {
  return _$_ShoppingListDTO(
    id: json['id'] as int,
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
    title: json['title'] as String,
    userId: json['user_id'] as int?,
    homeId: json['home_id'] as int,
    user: json['user'] == null
        ? null
        : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
    isAllCompleted: json['is_all_completed'] as bool,
    tasks: (json['tasks'] as List<dynamic>)
        .map((e) => ShoppingTaskDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ShoppingListDTOToJson(_$_ShoppingListDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'title': instance.title,
      'user_id': instance.userId,
      'home_id': instance.homeId,
      'user': instance.user,
      'is_all_completed': instance.isAllCompleted,
      'tasks': instance.tasks,
    };
