// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockDTO _$_$_StockDTOFromJson(Map<String, dynamic> json) {
  return _$_StockDTO(
    id: json['id'] as int,
    count: json['count'] as int,
    boxId: json['box_id'] as int?,
    box: json['box'] == null
        ? null
        : BoxDTO.fromJson(json['box'] as Map<String, dynamic>),
    itemId: json['item_id'] as int,
    item: json['item'] == null
        ? null
        : ItemDTO.fromJson(json['item'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_StockDTOToJson(_$_StockDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'box_id': instance.boxId,
      'box': instance.box,
      'item_id': instance.itemId,
      'item': instance.item,
    };
