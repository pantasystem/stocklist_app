import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/api/dto/shopping_task.dart';
import 'package:stocklist_app/api/dto/user.dart';
part 'shopping_list.freezed.dart';
part 'shopping_list.g.dart';

@freezed
class ShoppingListDTO with _$ShoppingListDTO {
  factory ShoppingListDTO({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'user_id') required int? userId,
    @JsonKey(name: 'home_id') required int homeId,
    @JsonKey(name: 'user') required UserDTO? user,
    @JsonKey(name: 'is_all_completed') required bool isAllCompleted,
    @JsonKey(name: 'tasks') required List<ShoppingTaskDTO> tasks
  }) = _ShoppingListDTO;

  factory ShoppingListDTO.fromJson(Map<String, dynamic> json) => _$ShoppingListDTOFromJson(json);

}