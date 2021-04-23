import 'package:freezed_annotation/freezed_annotation.dart';
part 'node_type.freezed.dart';
@freezed
class NodeType with _$NodeType {
  factory NodeType({required int id, required String name, required int homeId, required DateTime createdAt, DateTime? updatedAt}) = _NodeType;
}