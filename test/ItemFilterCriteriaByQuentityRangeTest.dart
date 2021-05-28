
import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/filter/item_filter.dart';

void main() {

  Item makeTestData(int quantity) {
    return Item(id: 0, name: 'name', imagePath: 'imagePath', homeId: 0, stockIds: [], imageUrl: 'imageUrl', itemQuantity: quantity, description: 'description', isDisposable: false, createdAt: DateTime.now(), updatedAt: DateTime.now(), categoryPath: '', categoryId: 0, boxIds: [], stockExpiries: []);
  }

  test("下限値を下回った場合フィルタされるのか？", () {
    final itemFilterCriteriaByQuantity = ItemFilterCriteria.quantityRange(5, 10);
    final filtered = itemFilterCriteriaByQuantity.filter([
      makeTestData(4)
    ]);
    expect(filtered, isEmpty);

  });

  test("上限値を上回った場合フィルタされるのか？", () {
    final itemFilterCriteriaByQuantity = ItemFilterCriteria.quantityRange(5, 10);
    final filtered = itemFilterCriteriaByQuantity.filter([
      makeTestData(11)
    ]);
    expect(filtered, isEmpty);
  });

  test("下限値と同等の場合", () {
    final itemFilterCriteriaByQuantity = ItemFilterCriteria.quantityRange(5, 10);
    final filtered = itemFilterCriteriaByQuantity.filter([
    makeTestData(5)
    ]);
    expect(filtered, isNotEmpty);
  });

  test("上限値と同等の場合", () {
    final itemFilterCriteriaByQuantity = ItemFilterCriteria.quantityRange(5, 10);
    final filtered = itemFilterCriteriaByQuantity.filter([
      makeTestData(10)
    ]);
    expect(filtered, isNotEmpty);
  });

  test("範囲内である場合", () {
    final itemFilterCriteriaByQuantity = ItemFilterCriteria.quantityRange(5, 10);
    final filtered = itemFilterCriteriaByQuantity.filter([
      makeTestData(6),
      makeTestData(9),
    ]);
    expect(filtered.length, equals(2));
  });

}