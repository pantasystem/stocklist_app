import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/node_type.dart';
import 'package:stocklist_app/entity/user.dart';

part 'item.freezed.dart';

@freezed
class ItemDTO with _$ItemDTO {
  factory ItemDTO({
    required int id,
    required String name,
    required String imagePath,
    required int homeId,
    int? itemId,
    List<User>? owners,
    required NodeType nodeType
  }) = _ItemDTO;
}