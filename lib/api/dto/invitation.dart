
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invitation.freezed.dart';
part 'invitation.g.dart';

@freezed
class Invitation with _$Invitation {
  factory Invitation({
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'home_id') required int homeId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'accepted_at') required DateTime? acceptedAt,
  }) = _Invitation;

  factory Invitation.fromJson(Map<String, dynamic> json) => _$InvitationFromJson(json);
}