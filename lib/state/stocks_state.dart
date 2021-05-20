

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/stock.dart';
part 'stocks_state.freezed.dart';

@freezed
class StocksState with _$StocksState {
  factory StocksState({required List<Stock> stocks}) = _StocksState;

  List<Stock> filterByItemId(int itemId) {
    return stocks.where((element) => element.itemId == itemId).toList();
  }

  Stock? get(int stockId) {
    return this.stocks.firstWhere((element) => element.id == stockId);
  }
}