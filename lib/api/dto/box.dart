import 'package:freezed_annotation/freezed_annotation.dart';

part 'box.freezed.dart';

@freezed
class BoxDTO with _$BoxDTO {
  factory BoxDTO({
    required int id,
    required String name,
    String? description,
  }) = _BoxDTO;
}
