import 'package:freezed_annotation/freezed_annotation.dart';

part 'box.freezed.dart';
part 'box.g.dart';

@freezed
class BoxDTO with _$BoxDTO {
  factory BoxDTO({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt
  }) = _BoxDTO;

  factory BoxDTO.fromJson(Map<String, dynamic> json) => _$BoxDTOFromJson(json);

}
