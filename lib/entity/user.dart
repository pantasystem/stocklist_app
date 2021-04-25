
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
@freezed
class User with _$User {
  factory User({
    required int id,
    required int homeId,
    required String name
  }) = _User;
}