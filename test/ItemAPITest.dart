import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/api/StocklistClient.dart';

void main() {
  StocklistClient stocklistClient = new StocklistClient("http://192.168.56.106:8080", "1|test-1");
  test("api/itemsから取得することができるのか?", () async{
    final res = await stocklistClient.itemAPI.all();
    print(res)
;  });

  test("api/items/{id}から取得することができるのか？", () async {
    final res = await stocklistClient.itemAPI.show(1);
    expect(res.id, 1);
  });

  test("api/itemsから作成することができるのか？", () async {
    print(Directory.current.path);
    final file = File(Directory.current.path + "/images/no_image_500.png");
    print(file.path);

    final res = await stocklistClient.itemAPI.create(name: "ただのもの", isDisposable: true, image: file);
    print(res);
    expect(res.name, "ただのもの");
  });
}