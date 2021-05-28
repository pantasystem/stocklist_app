
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/item.dart';

class ItemFilter {
  final Map<String, ItemFilterCriteria> filters;
  ItemFilter({ required this.filters });

  factory ItemFilter.fromList(List<ItemFilterCriteria> list){
    final map = {
      for(final v in list)
        v.runtimeType.toString() : v
    };
    return ItemFilter(filters: map);
  }

  List<Item> filter(List<Item> items) {
    List<Item> targetItems = items;
    filters.values.forEach((element) {
      targetItems = element.filter(targetItems);
    });
    return targetItems;
  }

  ItemFilterCriteria? getFilter(Type type) {
    return filters[type.toString()];
  }

  ItemFilter mergeAndCopy(List<ItemFilterCriteria> list) {
    final map = {
      ...filters
    };
    for(final f in list) {
      map[f.runtimeType.toString()] = f;
    }
    return ItemFilter(filters: map);
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