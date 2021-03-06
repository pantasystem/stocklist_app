

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:stocklist_app/filter/item_filter.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/category_screen.dart';
import 'package:stocklist_app/screen/stock_editor_screen.dart';
import 'package:stocklist_app/widget/box_widget.dart';
import 'package:stocklist_app/widget/category_widget.dart';

import 'boxes_screen.dart';

class FilterScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {

    final ItemFilter? filters = ModalRoute.of(context)?.settings.arguments as ItemFilter?;

    final selectedBoxId = useState<int?>(
      (filters?.getFilter(ItemFilterCriteriaByBox) as ItemFilterCriteriaByBox?)?.boxId
    );
    print("boxId: ${selectedBoxId.value}");
    final selectedCategoryId = useState<int?>(
      (filters?.getFilter(ItemFilterCriteriaByCategory) as ItemFilterCriteriaByCategory?)?.categoryId
    );
    final selectedBox = useProvider(boxesStateProvider).safeGet(selectedBoxId.value);
    final selectedCategory = useProvider(categoriesStateProvider).safeGet(selectedCategoryId.value);

    final countRange = filters?.getFilter(ItemFilterCriteriaByQuantityRange) as ItemFilterCriteriaByQuantityRange?;
    final minCountEditingController = useTextEditingController();
    minCountEditingController.text = countRange?.min?.toString()?? '';

    final maxCountEditingController = useTextEditingController();
    maxCountEditingController.text = countRange?.max?.toString()?? '';

    final dateRange = filters?.getFilter(ItemFilterCriteriaByStockExpirationDateRange) as ItemFilterCriteriaByStockExpirationDateRange?;

    final expirationDateRange = useState<DateTimeRange?>(dateRange?.range);
    final expirationDateRangeEditingController = useTextEditingController();

    // NOTE: TextFieldには入力しない＆useStateを源流にするため、毎回更新する。
    expirationDateRangeEditingController.value = TextEditingValue(
      text:expirationDateRange.value == null ? ''
            : (DateFormat.yMd().format(expirationDateRange.value!.start) + "～" + DateFormat.yMd().format(expirationDateRange.value!.end)),
    );

    void showSelectBoxScreen() async {
      final args = BoxesScreenArgs(
        selectable: BoxSelectable(
          maxSelectableCount: 1,
          selectedBoxIds: selectedBoxId.value == null ? [] : [selectedBoxId.value!],
        )
      );
      final res = await Navigator.of(context).pushNamed('/boxes', arguments: args);
      if(res is List && res.length > 0) {
        selectedBoxId.value = res[0];
        print("box選択:" + res.toString());
      }else if(res is List){
        selectedBoxId.value = null;
      }
    }

    void showSelectCategoryScreen() async {
      final args = CategoryScreenArgs(
        selectable: CategorySelectable(
          selectedCategoryIds: selectedCategoryId.value == null ? [] : [selectedCategoryId.value!],
          maxSelectableCount: 1
        )
      );
      final res = await Navigator.of(context).pushNamed('/categories', arguments: args);
      if(res is List && res.length > 0) {
        selectedCategoryId.value = res[0];
      }else if(res is List) {
        selectedCategoryId.value = null;
      }
    }

    Future<DateTime?> showDateRangePickerDialog() async{
      final res = await showDateRangePicker(
        context: context,
        initialDateRange: expirationDateRange.value,
        firstDate: DateTime.now().add(Duration(days: - 360 * 10)),
        lastDate: DateTime.now().add(
          Duration(days: 360 * 10)
        )
      );
      expirationDateRange.value = res;
    }

    void pop() {
      Navigator.of(context).pop(
        ItemFilter.fromList([
          if(int.tryParse(maxCountEditingController.value.text) != null || int.tryParse(minCountEditingController.value.text) != null)
            ItemFilterCriteria.quantityRange(
              int.tryParse(minCountEditingController.value.text),
              int.tryParse(maxCountEditingController.value.text)
            ),
          if(expirationDateRange.value != null)
            ItemFilterCriteria.stockExpireDateRange(expirationDateRange.value!),
          if(selectedBoxId.value != null)
            ItemFilterCriteria.box(selectedBoxId.value!),
          if(selectedCategoryId.value != null)
            ItemFilterCriteria.category(selectedCategoryId.value!)
        ])
      );
    }

    Widget buildCountRageForm() {
      return Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                hintText: "最小値",
                labelText: "最小値"
              ),
              keyboardType: TextInputType.number,
              controller: minCountEditingController,
            ),
          ),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                hintText: "最大値",
                labelText: "最大値",
              ),
              keyboardType: TextInputType.number,
              controller: maxCountEditingController,
            )
          )
        ],
      );
    }
    Widget buildExpirationDateRangeForm() {
      return TextField(
        focusNode: AlwaysDisabledFocusNode(),
        decoration: InputDecoration(
          hintText: '消費期限の範囲',
          labelText: '消費期限の範囲'
        ),
        onTap: () {
          showDateRangePickerDialog();
        },
        controller: expirationDateRangeEditingController,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("条件を選択"),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: pop,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Text("収納場所"),
          if(selectedBox == null)
            ListTile(
              trailing: Icon(Icons.arrow_forward),
              title: Text("収納場所を選択"),
              leading: Icon(Icons.all_inbox),
              onTap: () {
                showSelectBoxScreen();
              },
            ),
          if(selectedBox != null)
            BoxListTile(
              box: selectedBox,
              listener: () {
                showSelectBoxScreen();
              },
            ),

          Text("カテゴリー"),
          CategorySelectionListTile(
            category: selectedCategory,
            onTap: (){
              showSelectCategoryScreen();
            },
          ),
          Text("消費期限"),
          Container(
            padding: EdgeInsets.only(
              left: 8,
              right: 8
            ),
            child: buildExpirationDateRangeForm()
          ),

          Text("個数"),
          buildCountRageForm(),

        ],
      ),
    );
  }
}