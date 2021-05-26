
import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/api/StocklistClient.dart';

void main() {
  StocklistClient stocklistClient = new StocklistClient(const String.fromEnvironment('API_BASE_URL'), "1|test-1");

  test("カテゴリをすべて取得することができるのか", () async {
    final categories = await stocklistClient.categoryAPI.all();
    expect(categories, isNotEmpty);
  });

  test("カテゴリを新たに作成することはできるのか", () async {
    final categoryName = "hogehoge";
    final category = await stocklistClient.categoryAPI.create(categoryName);
    expect(category.path, equals(categoryName));
  });

  test("カテゴリを更新することはできるのか", () async {
    final categoryName = "hogehogepiyo2";
    final category = await stocklistClient.categoryAPI.create(categoryName);
    expect(category.path, equals(categoryName));
    final updateCategoryName = "fugafugapiyo2";
    await stocklistClient.categoryAPI.update(category.id, path: updateCategoryName);
    final res = await stocklistClient.categoryAPI.all();
    final updated = res.firstWhere((element) => element.id == category.id);
    expect(updated.path, updateCategoryName);
  });

  test("カテゴリを削除することはできるのか", () async {
    final category = await stocklistClient.categoryAPI.create("delete test");
    await stocklistClient.categoryAPI.delete(category.id);

  });

}