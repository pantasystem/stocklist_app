

import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/api/StocklistClient.dart';

void main() {
  StocklistClient stocklistClient = new StocklistClient(const String.fromEnvironment('API_BASE_URL'), "1|test-1");

  test("stockは作成することができるか", ()async{
    final created = await stocklistClient.itemAPI.stocks(1).create(boxId: 1, count: 10);
    expect(created, isNotNull);
  });

  test("消費期限を設定して作成することができるか", () async {
    final date = DateTime.now().add(Duration(days: 2));
    final created = await stocklistClient.itemAPI.stocks(1).create(boxId: 1, count: 10, expirationDate: date);
    expect(created.expire?.expirationDate?.day, equals(date.day));
  });
}