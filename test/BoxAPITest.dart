

import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/api/StocklistClient.dart';

void main() {
  StocklistClient stocklistClient = new StocklistClient(const String.fromEnvironment('API_BASE_URL'), "1|test-1");

  test("createできるのか？", () async {
    final res = await stocklistClient.boxAPI.create(name: "収納test", description: "家具の説明");
    expect(res.name, equals("収納test"));
  });

  test("create descriptionなしver", () async {
    final res = await stocklistClient.boxAPI.create(name: "収納test");
    expect(res.name, equals("収納test"));
    expect(res.description, isNull);
  });

  test("収納全取得", () async {
    final res = await stocklistClient.boxAPI.all();
    expect(res, isNotEmpty);
  });

  test("収納個別取得", () async {
    final res = await stocklistClient.boxAPI.create(name: "収納test");
    final res2 = await stocklistClient.boxAPI.show(res.id);
    expect(res2.name, equals("収納test"));
  });
}