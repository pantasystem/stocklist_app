
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';

@freezed
class Stock with _$Stock {
  factory Stock({required int id, int? boxId, required String name }) = _Stock;
}