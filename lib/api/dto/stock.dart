
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/stock_expire.dart';

import 'box.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
class StockDTO with _$StockDTO {
  factory StockDTO({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'box_id') required int boxId,
    @JsonKey(name: 'box') BoxDTO? box,
    @JsonKey(name: 'item_id') required int itemId,
    @JsonKey(name: 'item') ItemDTO? item,
    @JsonKey(name: 'expire') StockExpireDTO? expire,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _StockDTO;

  factory StockDTO.fromJson(Map<String, dynamic> json) => _$StockDTOFromJson(json);
}


