
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stocklist_app/filter/item_filter.dart';

void main() {

  test("目的のFilterを取得できるのか？", () {
    final filters = ItemFilter.fromList([
      ItemFilterCriteria.category(0),
      ItemFilterCriteria.box(0),
      ItemFilterCriteria.quantityRange(10, 10),
      ItemFilterCriteria.stockExpireDateRange(DateTimeRange(start: DateTime.now(), end: DateTime.now().add(Duration(hours: 10))))
    ]);
    final criteria1 = filters.getFilter(ItemFilterCriteriaByCategory);
    expect(criteria1, isNotNull);
    expect(criteria1, TypeMatcher<ItemFilterCriteriaByCategory>());

    final criteria2 = filters.getFilter(ItemFilterCriteriaByBox);
    expect(criteria2, isNotNull);
    expect(criteria2, TypeMatcher<ItemFilterCriteriaByBox>());

  });

  test("同じ型のFilterを入れた場合除外されるのか?", () {
    final filters = ItemFilter.fromList([
      ItemFilterCriteria.category(0),
      ItemFilterCriteria.box(0),
      ItemFilterCriteria.box(1),
      ItemFilterCriteria.quantityRange(10, 10),
      ItemFilterCriteria.quantityRange(10, 10),
      ItemFilterCriteria.quantityRange(10, 10),
      ItemFilterCriteria.stockExpireDateRange(DateTimeRange(start: DateTime.now(), end: DateTime.now().add(Duration(hours: 10))))
    ]);
    expect(filters.filters.length, equals(4));

  });
}