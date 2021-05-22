import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_expire.freezed.dart';
part 'stock_expire.g.dart';

@freezed
class StockExpireDTO with _$StockExpireDTO {
  factory StockExpireDTO({
    @JsonKey(name: 'expiration_date') required DateTime? expirationDate
  }) = _StockExpireDTO;

  factory StockExpireDTO.fromJson(Map<String, dynamic> json) => _$StockExpireDTOFromJson(json);

}
