
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class UserDTO with _$UserDTO{

  factory UserDTO({required String name, required int id}) = _UserDTO;
}