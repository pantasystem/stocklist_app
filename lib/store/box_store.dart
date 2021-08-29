
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/boxes_state.dart';

class BoxStore extends StateNotifier<BoxesState> {
  final Reader reader;
  BoxStore(this.reader) : super(BoxesState(boxes: []));


  void addAll(List<Box> list) {
    final filtered = this.state.boxes.where((element) => !list.any((n) => n.id == element.id));
    this.state = this.state.copyWith(
      boxes: [ ...filtered, ...list ]
    );
  }

  void add(Box box) {
    final filtered = this.state.boxes.where((el) => el.id != box.id);
    this.state = this.state.copyWith(
      boxes: [
        ...filtered,
        box
      ]
    );
  }

  void remove(int boxId) {
    this.state = this.state.copyWith(
      boxes: this.state.boxes.where((element) => element.id == boxId).toList()
    );
  }

  Future fetchAll() async{
    this.state = this.state.copyWith(
        boxes: []
    );
    final res = await stocklistClient.boxAPI.all();
    reader(storeAdder).addAllBoxDTOs(res);
  }

  Future create({required String name, String? description }) async {
    final res = await stocklistClient.boxAPI.create(name: name, description: description);
    reader(storeAdder).addBoxDTO(res);
  }

  Future update(int boxId, {required String name, String? description}) async {
    await stocklistClient.boxAPI.update(boxId, name: name, description: description);
    final res = await stocklistClient.boxAPI.show(boxId);
    reader(storeAdder).addBoxDTO(res);
  }

  void clear() {
    this.state = BoxesState(boxes: []);
  }
}