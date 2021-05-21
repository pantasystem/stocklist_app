// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_expire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_StockExpireDTO _$_$_StockExpireDTOFromJson(Map<String, dynamic> json) {
  return _$_StockExpireDTO(
    expirationDate: DateTime.parse(json['expiration_date'] as String),
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_StockExpireDTOToJson(_$_StockExpireDTO instance) =>
    <String, dynamic>{
      'expiration_date': instance.expirationDate.toIso8601String(),
    };
