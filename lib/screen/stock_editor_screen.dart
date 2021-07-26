


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/boxes_screen.dart';
import 'package:stocklist_app/screen/item_screen.dart';
import 'package:stocklist_app/widget/box_widget.dart';
import 'package:stocklist_app/widget/item_widget.dart';

/// StockEditorScreenにデータを渡すためのオブジェクト
class StockEditorArgs {
  final Stock? stock;
  final Item? item;
  StockEditorArgs({required this.item, this.stock});
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class StockEditorScreen extends HookWidget {


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as StockEditorArgs;
    final boxId = useState(args.stock?.boxId);
    final itemId = useState(args.stock?.itemId ?? args.item?.id);
    final selectedBox = useProvider(boxesStateProvider).safeGet(boxId.value);
    final selectedItem = useProvider(itemsStateProvider).safeGet(itemId.value);
    final stocksStore = useProvider(stocksStateProvider.notifier);

    final inputCounter = useTextEditingController.fromValue(
      TextEditingValue(
        text: (args.stock?.count)?.toString()?? ''
      )
    );


    final isSending = useState(false);
    //final Item item = useProvider(itemsStateProvider).safeGet(args.item?.id);
    final now = DateTime.now();
    final expirationDate = useState<DateTime?>(args.stock?.expirationDate);

    final inputExpirationDate = useTextEditingController();
    inputExpirationDate.value = TextEditingValue(
      text: expirationDate.value == null ? '' : "${expirationDate.value?.year}/${expirationDate.value?.month}/${expirationDate.value?.day}"
    );

    final validationError = useState<ValidationException?>(null);

    Future<void> selectBox() async {
      final res = await Navigator.of(context).pushNamed(
          '/boxes',
          arguments: BoxesScreenArgs(
              selectable: BoxSelectable(maxSelectableCount: 1, selectedBoxIds: boxId.value == null ? [] : [boxId.value!])
          )
      );
      if(res is List && res.length > 0) {
        boxId.value = res[0];
        print("box選択:" + res.toString());
      }else if(res is List){
        boxId.value = null;
      }
    }

    Future<void> selectItem() async {
      final args = ItemScreenArgs(
        selectable: ItemSelectable(
          max: 1,
          selectedItemIds: itemId.value == null ? [] : [itemId.value!]
        )
      );
      final res = await Navigator.of(context).pushNamed('/items', arguments: args);
      if(res is List && res.isNotEmpty) {
        itemId.value = res[0];
      }else{
        itemId.value = null;
      }
    }

    Widget dateForm(String label, DateTime? date) {
      return TextField(
        controller: inputExpirationDate,
        focusNode: AlwaysDisabledFocusNode(),
        onTap: () async {
          final pickedDate = await showDatePicker(context: context, initialDate: now, firstDate: now, lastDate: now.add(Duration(days: 360 * 15)));
          expirationDate.value = pickedDate;
        },
        decoration: InputDecoration(
          labelText: "消費期限",
          hintText: "消費期限",
          errorText: validationError.value?.safeGetErrorMessage('expiration_date')
        ),
      );

    }

    void save() {
      print("save");
      if(isSending.value){
        return;
      }
      isSending.value = true;
      stocksStore.updateOrCreate(
        boxId: boxId.value,
        count: int.tryParse(inputCounter.value.text),
        expirationDate: expirationDate.value,
        itemId: itemId.value,
        stockId: args.stock?.id
      ).then((value){
        Navigator.pop(context);
      }).catchError((e) {
        if(e is ValidationException) {
          print(e.message);
          validationError.value = e;
        }
        print(e);
      }).whenComplete(() => isSending.value = false);
    }

    final boxError = validationError.value?.safeGetErrorMessage('box_id');
    return Scaffold(
      appBar: AppBar(
        title: args.stock == null ? Text("新しく収納する") : Text("収納情報編集"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("収納する物"),
          if(selectedItem == null)
            ListTile(
              title: Text("収納する物を選択してください。"),
              leading: Icon(Icons.arrow_forward_ios),
              subtitle: boxError == null ? null :
                Text(
                  boxError,
                  style: TextStyle(color: Theme.of(context).errorColor),
                ),
              onTap: selectItem,
            ),
          if(selectedItem != null)
            ItemListTileWidget(
              item: selectedItem,
              onTap: selectItem,
            ),
          Divider(
            height: 8,
          ),
          Text("収納場所"),
          if(boxId.value == null)
            ListTile(
              title: Text("収納先を選択してください。"),
              subtitle: boxError == null ? null :
              Text(
                boxError,
                style: TextStyle(
                    color: Theme.of(context).errorColor
                ),
              ),
              leading: Icon(Icons.arrow_forward_ios),
              onTap: selectBox,
            ),
          if(selectedBox != null)
            BoxListTile(
              box: selectedBox,
              listener: selectBox,
            ),
          TextField(
            controller: inputCounter,
            decoration: InputDecoration(
                hintText: "個数",
                labelText: "個数",
                errorText: validationError.value?.safeGetErrorMessage('count')

            ),
            keyboardType: TextInputType.number,
          ),
          if(itemId.value != null && useProvider(itemsStateProvider).get(itemId.value).isDisposable == true)
            dateForm('消費期限', expirationDate.value)
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed:isSending.value ? null : (){
            print('onPressd save');
            save();
          },
          child: Text("保存する"),
          style: ElevatedButton.styleFrom(primary: Theme.of(context).accentColor),
        )
      ],

    );
  }
}
