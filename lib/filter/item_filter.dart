
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/item.dart';

class ItemFilter {
  final List<ItemFilterCriteria> filters;
  ItemFilter({ required this.filters });

  List<Item> filter(List<Item> items) {
    List<Item> targetItems = items;
    filters.forEach((element) {
      targetItems = element.filter(targetItems);
    });
    return targetItems;
  }

  ItemFilter? getFilter(Type type) {
    return filters.firstWhere((element) => element.runtimeType == type) as ItemFilter?;
  }
}

class ItemFilterCriteria {
  ItemFilterCriteria._();
  
  factory ItemFilterCriteria.quantityRange(int? min, int? max) = ItemFilterCriteriaByQuantityRange;
  factory ItemFilterCriteria.category(int categoryId) = ItemFilterCriteriaByCategory;
  factory ItemFilterCriteria.stockExpireDateRange(DateTimeRange range) = ItemFilterCriteriaByStockExpirationDateRange;
  factory ItemFilterCriteria.box(int boxId) = ItemFilterCriteriaByBox;


  List<Item> filter(List<Item> items) {
    return items;
  }
}

class ItemFilterCriteriaByQuantityRange extends ItemFilterCriteria{
  final int? min;
  final int? max;
  ItemFilterCriteriaByQuantityRange(this.min, this.max) : super._();
  
  @override
  List<Item> filter(List<Item> items) {
    return items.where((element){
      if(min != null) {
        return element.itemQuantity >= this.min!;
      }
      return true;
    }).where((element){
      if(max != null) {
        return element.itemQuantity <= this.max!;
      }
      return true;
    }).toList();
  }
}

class ItemFilterCriteriaByCategory extends ItemFilterCriteria {
  final int categoryId;
  ItemFilterCriteriaByCategory(this.categoryId) : super._();

  @override
  List<Item> filter(List<Item> items) {
    return items.where((element) => element.categoryId == this.categoryId).toList();
  }
}

class ItemFilterCriteriaByBox extends ItemFilterCriteria {
  final int boxId;
  
  ItemFilterCriteriaByBox(this.boxId) : super._();
  
  @override
  List<Item> filter(List<Item> items) {
    return items.where((element) => element.boxIds.any((boxId) => boxId == this.boxId)).toList();
  }
}

class ItemFilterCriteriaByStockExpirationDateRange extends ItemFilterCriteria {
  final DateTimeRange range;
  ItemFilterCriteriaByStockExpirationDateRange(this.range) : super._();
  
  @override
  List<Item> filter(List<Item> items) {
    return items.where((element) => element.stockExpiries.any((date) => date.isAfter(this.range.start) && date.isBefore(this.range.end))).toList();
  }
} 