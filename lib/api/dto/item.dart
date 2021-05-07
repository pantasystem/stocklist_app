import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:stocklist_app/entity/user.dart';

part 'item.freezed.dart';

@freezed
class ItemDTO with _$ItemDTO {
  factory ItemDTO({
    required int id,
    required String name,
    required String imagePath,
    required int homeId,
    List<User>? owners,
  }) = _ItemDTO;
}

@freezed
class ItemDetailDTO with _$ItemDetailDTO {
  factory ItemDetailDTO({
    required int id,
    required String name,
    required String imagePath,
    required int homeId,
    List<User>? owners,
    List<StockDTO>? stocks
  }) = _ItemDetailDTO;
}