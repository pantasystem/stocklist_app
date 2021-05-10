
import 'package:freezed_annotation/freezed_annotation.dart';

import 'box.dart';

part 'stock.freezed.dart';

@freezed
class StockDTO with _$StockDTO {
  factory StockDTO({
    required int id,
    required int count,
    required String name,
    int? boxId,
    BoxDTO? box,

  }) = _StockDTO;
}



