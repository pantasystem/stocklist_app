
import 'package:stocklist_app/entity/item.dart';

class ItemFilterCriteria {
  ItemFilterCriteria._();
  
  factory ItemFilterCriteria.quantityRange(int? min, int? max) = ItemFilterCriteriaByQuantityRange;
  factory ItemFilterCriteria.category(int categoryId) = ItemFilterCriteriaByCategory;

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

