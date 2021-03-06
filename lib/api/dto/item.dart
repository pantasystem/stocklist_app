import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:stocklist_app/api/dto/user.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class ItemDTO with _$ItemDTO {
  factory ItemDTO({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'image_path') required String imagePath,
    @JsonKey(name: 'home_id') required int homeId,
    @JsonKey(name: 'owners') List<UserDTO>? owners,
    @JsonKey(name: 'stocks') List<StockDTO>? stocks,
    @JsonKey(name: 'stock_ids') required List<int> stockIds,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'item_quantity') int? itemQuantity,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'is_disposable') required bool isDisposable,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'category_path') required String? categoryPath,
    @JsonKey(name: 'category_id') required int? categoryId,
    @JsonKey(name: 'box_ids') required List<int> boxIds,
    @JsonKey(name: 'stock_expiries') required List<DateTime> stockExpiries,
  }) = _ItemDTO;

  factory ItemDTO.fromJson(Map<String, dynamic> json) => _$ItemDTOFromJson(json);

}

