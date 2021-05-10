

import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/stock.dart';

class StocklistClient {
  final String baseURL;


  StocklistClient({required this.baseURL});


}

class ItemAPI {
  Future<List<ItemDTO>> all({ DateTime? sinceUpdatedAt }) async{
    throw Exception();
  }
  Future<ItemDetailDTO> create() async {
    throw Exception();
  }
  StockAPI stocks(int itemId) {
    return StockAPI();
  }
}

class StockAPI {
  Future<List<StockDTO>> all() async {
    throw Exception();
  }
  Future<StockDTO> show($stockId) async {
    throw Exception();
  }
  void delete($stockId) async {
    throw Exception();
  }
  Future<StockDTO> create() async{
    throw Exception();
  }
}

