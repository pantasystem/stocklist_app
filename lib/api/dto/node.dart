import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/node_type.dart';
part 'node.freezed.dart';

@freezed
class NodeDTO with _$NodeDTO{
  factory NodeDTO({required int id, required String name, required String path, required NodeType nodeType}) = _NodeDTO;
}