import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/user.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item{

  factory Item({
    required int id,
    required String name,
    required String imagePath,
    required int homeId,
    List<User>? owners,
    required List<int> stockIds,
    required String imageUrl,
    required int itemQuantity
  }) = _Item;
}
