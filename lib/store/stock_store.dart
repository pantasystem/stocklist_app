
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/stock.dart';

class StockStore extends StateNotifier<List<Stock>> {
  StockStore() : super([]);

  List<Stock> filterByItemId(int itemId) {
    return state.where((element) => element.itemId == itemId).toList();
  }
  
  void removeByItemId(int itemId) {
    state = state.where((element) => element.itemId == itemId).toList();
  }

  void addAll(List<Stock> list) {
    final filtered = this.state.where((element) => !list.any((n) => n.id == element.id));
    this.state = [ ...filtered, ...list ];
  }

  void add(Stock stock) {
    final filtered = this.state.where((el) => el.id != stock.id);
    this.state = [
      ...filtered,
      stock
    ];
  }

  void remove(int stockId) {
    this.state = this.state.where((element) => element.id == stockId).toList();
  }

  Stock? get(int stockId) {
    return this.state.firstWhere((element) => element.id == stockId);
  }

}