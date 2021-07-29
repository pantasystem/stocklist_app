
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/widget/box_widget.dart';
import 'package:collection/collection.dart';

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

    final boxes = (useProvider(boxesStateProvider).boxes as List<Box>).sortedBy((element) => element.name).toList();
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
          listener: (box) {
            if(selectedBoxIds.value.any((element) => element == box.id)) {
              selectedBoxIds.value = selectedBoxIds.value.where((element) => element != box.id).toSet().toList();
            }else if(selectable){
              selectedBoxIds.value = [
                ...selectedBoxIds.value,
                box.id
              ];
            }else{
              showBoxEditorDialog(box);
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

    final boxStore = useProvider(boxesStateProvider.notifier);

    void submit() {
      Future future;
      if(box == null) {
        future = boxStore.create(name: name.text, description: description.text);
      }else{
        future = boxStore.update(box!.id, name: name.text, description: description.text);
      }
      future.then((value){
        Navigator.of(context).pop();
      }).catchError((e, _){
        if(e is ValidationException) {
          validationErrors.value = e;
        }else{
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("作成に失敗しました")));
        }
      });
    }

    return AlertDialog(
      title: Text(box == null ? "収納を作成" : "収納を編集"),
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

