
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/box.dart';

class BoxStore extends StateNotifier<List<Box>> {
  BoxStore() : super([]);


  void addAll(List<Box> list) {
    final filtered = this.state.where((element) => !list.any((n) => n.id == element.id));
    this.state = [ ...filtered, ...list ];
  }

  void add(Box box) {
    final filtered = this.state.where((el) => el.id != box.id);
    this.state = [
      ...filtered,
      box
    ];
  }

  void remove(int boxId) {
    this.state = this.state.where((element) => element.id == boxId).toList();
  }



}