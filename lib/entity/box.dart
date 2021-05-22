import 'package:freezed_annotation/freezed_annotation.dart';

part 'box.freezed.dart';

@freezed
class Box with _$Box {
  factory Box({
    required int id,
    required String name,
    String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Box;
}