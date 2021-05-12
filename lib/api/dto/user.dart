
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserDTO with _$UserDTO{

  factory UserDTO({@JsonKey(name: 'name') required String name, @JsonKey(name: 'id') required int id, @JsonKey(name: 'home_id') required int homeId}) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

}