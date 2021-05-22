

import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/api/StocklistClient.dart';

void main() {
  StocklistClient stocklistClient = new StocklistClient(const String.fromEnvironment('API_BASE_URL'), "1|test-1");

  test("stockは作成することができるか", ()async{
    final created = await stocklistClient.stockAPI.create(boxId: 1, count: 10, itemId: 1);
    expect(created, isNotNull);
  });

  test("消費期限を設定して作成することができるか", () async {
    final date = DateTime.now().add(Duration(days: 2));
    final created = await stocklistClient.stockAPI.create(boxId: 1, count: 10, expirationDate: date, itemId: 1);
    expect(created.expire?.expirationDate?.day, equals(date.day));
  });

  test("stockは更新することができるか", () async {
    final created = await stocklistClient.stockAPI.create(boxId: 1, count: 10, itemId: 1);
    expect(created, isNotNull);
    await stocklistClient.stockAPI.update(created.itemId, boxId: 1, count: 3, itemId: 1);

  });
}