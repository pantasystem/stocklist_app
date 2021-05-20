
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/state/stocks_state.dart';

class StockStore extends StateNotifier<StocksState> {
  StockStore() : super(new StocksState(stocks: []));


  void removeByItemId(int itemId) {
    state = this.state.copyWith(stocks: state.stocks.where((element) => element.itemId == itemId).toList());
  }

  void addAll(List<Stock> list) {
    final filtered = this.state.stocks.where((element) => !list.any((n) => n.id == element.id));
    final newList =  [ ...filtered, ...list ];
    this.state = this.state.copyWith(stocks: newList);
  }

  void add(Stock stock) {
    final filtered = this.state.stocks.where((el) => el.id != stock.id);
    this.state = this.state.copyWith(
        stocks: [
      ...filtered,
      stock
    ]);
  }

  void remove(int stockId) {
    this.state = this.state.copyWith(
      stocks: this.state.stocks.where((element) => element.id == stockId).toList()
    );
  }



}