import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/api/dto/user.dart';
part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeDTO with _$HomeDTO {
  factory HomeDTO({ required int id, required String name, required List<UserDTO> members}) = _HomeDTO;

  factory HomeDTO.fromJson(Map<String, dynamic> json) => _$HomeDTOFromJson(json);
}