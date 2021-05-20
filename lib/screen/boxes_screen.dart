
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/widget/box_and_item.dart';
import 'package:stocklist_app/widget/box_widget.dart';

class BoxSelectable {
  final int maxSelectableCount;
  final List<int> selectedBoxIds;
  BoxSelectable({
    required this.maxSelectableCount,
    this.selectedBoxIds = const [],
  });
}
class BoxesScreenArgs {
   final BoxSelectable? selectable;
   BoxesScreenArgs({
     this.selectable
  });

}

class BoxesScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    //final boxes = makeBoxes();

    final boxes = useProvider(boxesStateProvider).boxes;
    final args = ModalRoute.of(context)?.settings.arguments as BoxesScreenArgs?;
    final selectedBoxIds = useState(args?.selectable?.selectedBoxIds?? []);
    final selectable = useMemoized((){
      return selectedBoxIds.value.length < (args?.selectable?.maxSelectableCount ?? -1);
    }, [selectedBoxIds]);
    return Scaffold(
        appBar: AppBar(
          title: args?.selectable == null ? Text("収納別") : Text("収納選択(${selectedBoxIds.value.length}/${args?.selectable?.maxSelectableCount})"),
          actions: [
            if(args?.selectable != null)
              IconButton(
                onPressed: (){
                  Navigator.pop(context, selectedBoxIds.value);
                },
                icon: Icon(Icons.check),
              )
          ],
        ),
        body: BoxListView(
          boxes: boxes,
          selectedBoxIds: selectedBoxIds.value,
          isSelectable: selectable,
          listener: (id) {
            if(selectable) {
              if(selectedBoxIds.value.any((element) => element == id)) {
                selectedBoxIds.value = selectedBoxIds.value.where((element) => element != id).toSet().toList();
              }else{
                selectedBoxIds.value = [
                  ...selectedBoxIds.value,
                  id
                ];
              }
            }
          },
        )
    );
  }
}


