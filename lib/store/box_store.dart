
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/boxes_state.dart';

class BoxStore extends StateNotifier<BoxesState> {

  final Reader _reader;
  BoxStore(this._reader) : super(BoxesState(boxes: []));


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


  Future fetchAll() async {
    final boxes = await stocklistClient.boxAPI.all();
    _reader(storeAdder).addAllBoxDTOs(boxes);
  }

  Future fetch(int boxId) async {
    final box = await stocklistClient.boxAPI.show(boxId);
    _reader(storeAdder).addBoxDTO(box);
  }

  Future create({ required String name, String? description }) async {
    final box = await stocklistClient.boxAPI.create(name: name, description: description);
    _reader(storeAdder).addBoxDTO(box);
  }



}