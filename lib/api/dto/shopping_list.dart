import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/api/dto/shopping_task.dart';
import 'package:stocklist_app/api/dto/user.dart';
part 'shopping_list.freezed.dart';
part 'shopping_list.g.dart';

@freezed
class ShoppingListDTO with _$ShoppingListDTO {
  factory ShoppingListDTO({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String title,
    required int? userId,
    required int homeId,
    required UserDTO? user,
    required bool isAllCompleted,
    required List<ShoppingTaskDTO> tasks
  }) = _ShoppingListDTO;

  factory ShoppingListDTO.fromJson(Map<String, dynamic> json) => _$ShoppingListDTOFromJson(json);

}