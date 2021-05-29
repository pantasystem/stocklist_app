

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:stocklist_app/filter/item_filter.dart';
import 'package:stocklist_app/main.dart';

class ItemFilterChip extends StatelessWidget {

  final ItemFilterCriteria itemFilterCriteria;
  final ValueChanged<bool>? onSelected;
  final bool selected;
  ItemFilterChip(this.itemFilterCriteria, { this.onSelected, this.selected = false });

  @override
  Widget build(BuildContext context) {
    String generateLabel() {
      final criteria = itemFilterCriteria;
      if(criteria is ItemFilterCriteriaByBox) {

        final box = context.read(boxesStateProvider).get(criteria.boxId);
        return box.name;
      }else if(criteria is ItemFilterCriteriaByQuantityRange) {
        if(!(criteria.min == null || criteria.max == null)) {
          return "個数:${criteria.min}-${criteria.max}";
        }else if(criteria.min == null) {
          return "個数:${criteria.max}以下";
        }else{
          return "個数:${criteria.min}以上";
        }
      }else if(criteria is ItemFilterCriteriaByCategory) {
        final category = context.read(categoriesStateProvider).get(criteria.categoryId);
        return category.path;
      }else if(criteria is ItemFilterCriteriaByStockExpirationDateRange) {
        final formatter = DateFormat.yMd();
        return "消費期限:${formatter.format(criteria.range.start)}-${formatter.format(criteria.range.end)}";
      }else{
        throw Exception("異常な状態です。:${criteria.runtimeType}はサポートされていません。");
      }
    }
    return FilterChip(label: Text(generateLabel()), onSelected: onSelected, selected: selected);
  }
}