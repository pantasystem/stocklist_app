


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/api/dto/stock.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/boxes_screen.dart';
import 'package:stocklist_app/widget/box_widget.dart';

/// StockEditorScreenにデータを渡すためのオブジェクト
class StockEditorArgs {
  final Stock? stock;
  final Item item;
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
    final stocksStore = useProvider(stocksStateProvider.notifier);

    final inputCounter = useTextEditingController.fromValue(
      TextEditingValue(
        text: (args.stock?.count)?.toString()?? ''
      )
    );


    final isSending = useState(false);
    final Item item = useProvider(itemsStateProvider).get(args.item.id);
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
        itemId: item.id,
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
          if(boxId.value != null)
            BoxListTile(
              box: useProvider(boxesStateProvider).get(boxId.value),
              listener: selectBox,
            ),
          TextField(
            controller: inputCounter,
            decoration: InputDecoration(
                hintText: "収納する${item.name}の個数",
                labelText: "個数",
                errorText: validationError.value?.safeGetErrorMessage('count')

            ),
            keyboardType: TextInputType.number,
          ),
          if(item.isDisposable)
            dateForm('消費期限', expirationDate.value)
        ],
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed:isSending.value ? null : (){
            print('onPressd save');
            save();
          },
          child: Text("保存する")
        )
      ],

    );
  }
}
