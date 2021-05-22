

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/stocks_state.dart';

class StockStore extends StateNotifier<StocksState> {
  StockStore(this.reader) : super(new StocksState(stocks: []));

  final Reader reader;

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

  Future<Stock> updateOrCreate({ required int? itemId, required int? boxId, required int? count, required DateTime? expirationDate, required int? stockId}) async{

    if(stockId == null) {
      final stockDTO = await stocklistClient.stockAPI.create(itemId: itemId, boxId: boxId, count: count, expirationDate: expirationDate);
      reader(storeAdder).addStockDTO(stockDTO);
      return this.state.get(stockDTO.id)!;
    }else{
      await stocklistClient.stockAPI.update(stockId, boxId: boxId, count: count, expirationDate: expirationDate, itemId: itemId);
      final updated = state.get(stockId)!.copyWith(
        boxId: boxId!,
        itemId: itemId!,
        count: count ?? 0,
        expirationDate: expirationDate
      );
      add(updated);
      return updated;
    }
  }


}