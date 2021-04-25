import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 各要素（Item, Node）などの表示タイプ
enum DisplayType {
  LIST, GRID
}

class DisplayTypeState extends StateNotifier<DisplayType> {
  DisplayTypeState(DisplayType type) : super(type);

  void changeToGrid() {
    state = DisplayType.GRID;
  }

  void changeToList() {
    state = DisplayType.LIST;
  }

  void toggle() {
    if(state == DisplayType.LIST) {
      changeToGrid();
    }else{
      changeToList();
    }
  }

}