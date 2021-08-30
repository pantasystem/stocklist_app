// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeDTO _$_$_HomeDTOFromJson(Map<String, dynamic> json) {
  return _$_HomeDTO(
    id: json['id'] as int,
    name: json['name'] as String,
    members: (json['members'] as List<dynamic>)
        .map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_HomeDTOToJson(_$_HomeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'members': instance.members,
    };
