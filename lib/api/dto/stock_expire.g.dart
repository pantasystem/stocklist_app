// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_expire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StockExpireDTO _$_$_StockExpireDTOFromJson(Map<String, dynamic> json) {
  return _$_StockExpireDTO(
    expirationDate: json['expiration_date'] == null
        ? null
        : DateTime.parse(json['expiration_date'] as String),
  );
}

Map<String, dynamic> _$_$_StockExpireDTOToJson(_$_StockExpireDTO instance) =>
    <String, dynamic>{
      'expiration_date': instance.expirationDate?.toIso8601String(),
    };
