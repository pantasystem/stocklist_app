import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/box.dart';
part 'boxes_state.freezed.dart';

@freezed
class BoxesState with _$BoxesState {
  factory BoxesState({required List<Box> boxes}) = _BoxesState;
  const BoxesState._();
  Box? get(int boxId) {
    return this.boxes.firstWhere((element) => element.id == boxId);
  }

  Box? safeGet(int? boxId) {
    if(boxId == null) {
      return null;
    }
    return this.boxes.firstWhereOrNull((element) => element.id == boxId);
  }
}
