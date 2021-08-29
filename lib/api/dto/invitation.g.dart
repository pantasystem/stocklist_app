// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Invitation _$_$_InvitationFromJson(Map<String, dynamic> json) {
  return _$_Invitation(
    createdAt: DateTime.parse(json['created_at'] as String),
    homeId: json['home_id'] as int,
    userId: json['user_id'] as int,
    acceptedAt: json['accepted_at'] == null
        ? null
        : DateTime.parse(json['accepted_at'] as String),
  );
}

Map<String, dynamic> _$_$_InvitationToJson(_$_Invitation instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'home_id': instance.homeId,
      'user_id': instance.userId,
      'accepted_at': instance.acceptedAt?.toIso8601String(),
    };
