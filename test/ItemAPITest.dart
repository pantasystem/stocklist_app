import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/api/StocklistClient.dart';

void main() {
  StocklistClient stocklistClient = new StocklistClient("http://192.168.56.106:8080", "1|test-1");
  test("api/stocksから取得することができるのか?", () async{
    final res = await stocklistClient.itemAPI.all();
    print(res)
;  });

  test("api/stocks/{id}から取得することができるのか？", () async {
    final res = await stocklistClient.itemAPI.show(1);
    expect(res.id, 1);
  });
}