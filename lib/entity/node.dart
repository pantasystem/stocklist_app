import 'package:freezed_annotation/freezed_annotation.dart';
import 'node_type.dart';
part 'node.freezed.dart';

@freezed
class Node with _$Node{
  factory Node({required int id, required String name, required String path, required NodeType type}) = _Node;
}