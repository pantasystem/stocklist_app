import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'node.freezed.dart';

@freezed
class Node with _$Node{
  factory Node({required int id, required String name, required String path}) = _Node;
}