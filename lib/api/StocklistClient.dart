

import 'dart:convert';
import 'dart:ffi';

import 'package:stocklist_app/api/dto/item.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:fluri/fluri.dart';
import 'package:http/http.dart' as http;

class StocklistClient {
  final String baseURL;
  ItemAPI itemAPI;

  StocklistClient.initial({required this.baseURL, required this.itemAPI});

  factory StocklistClient(String baseURL) {
    final itemAPI = ItemAPI(baseURL: baseURL);
    return StocklistClient.initial(baseURL: baseURL, itemAPI: itemAPI);
  }


}

class ItemAPI {

  final String baseURL;
  ItemAPI({required this.baseURL});


  Future<List<ItemDTO>> all({ DateTime? sinceUpdatedAt }) async{
    final builder = Fluri.from(Fluri(baseURL))
      ..appendToPath('api/items');
    if(sinceUpdatedAt != null) {
      builder.queryParameters = {
        'sinceUpdatedAt': sinceUpdatedAt.toIso8601String()
      };
    }
    
    final res = await http.get(builder.uri, headers: makeHeader(null));
    List<ItemDTO> stocks =  json.decoder.convert(res.body);
    return stocks;
  }
  Future<ItemDTO> create() async {
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

class ItemsStockAPI implements StockAPI {
  @override
  Future<List<StockDTO>> all({String? hoge}) {
    // TODO: implement all
    throw UnimplementedError();
  }

  @override
  Future<StockDTO> show($stockId) {
    // TODO: implement show
    throw UnimplementedError();
  }

  @override
  void delete($stockId) {
    // TODO: implement delete
  }

  @override
  Future<StockDTO> create() {
    // TODO: implement create
    throw UnimplementedError();
  }
}

Map<String, String> makeHeader(String? token) {
  return {
    'Content-Type': 'application/json',
    if(token != null) 'Authentication' : 'Bearer Token: $token',
    'Accept': 'application/json'
  };
}

