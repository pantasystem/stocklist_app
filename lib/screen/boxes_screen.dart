
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/main.dart';
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
    final selectable = selectedBoxIds.value.length < (args?.selectable?.maxSelectableCount ?? -1);
    final boxStore = useProvider(boxesStateProvider.notifier);
    useEffect(() {
      Future.microtask(() => {
        boxStore.fetchAll()
      });
    }, []);

    void showBoxEditorDialog(Box? box) {
      showDialog(context: context, builder: (context)=>BoxEditorDialog(box: box));
    }
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
            if(selectedBoxIds.value.any((element) => element == id)) {
              selectedBoxIds.value = selectedBoxIds.value.where((element) => element != id).toSet().toList();
            }else if(selectable){
              selectedBoxIds.value = [
                ...selectedBoxIds.value,
                id
              ];
            }
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showBoxEditorDialog(null);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


class BoxEditorDialog extends HookWidget {
  final Box? box;
  BoxEditorDialog({required this.box});

  @override
  Widget build(BuildContext context) {
    final name = useTextEditingController.fromValue(
      TextEditingValue(text: box?.name ?? '')
    );
    final description = useTextEditingController.fromValue(
      TextEditingValue(text: box?.description ?? '')
    );

    final validationErrors = useState<ValidationException?>(null);

    void submit() {

    }

    return AlertDialog(
      actions: [
        TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          child: Text("取り消し")
        ),
        TextButton(
          onPressed: (){
            submit();
          },
          child: Text("作成")
        )
      ],
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "収納名",
                errorText: validationErrors.value?.safeGetErrorMessage("name")
              ),
            ),
            TextField(
              controller: description,
              decoration: InputDecoration(
                hintText: "説明",
                errorText: validationErrors.value?.safeGetErrorMessage("description")
              ),
            )
          ],
        ),
      ),
    );
  }
}

