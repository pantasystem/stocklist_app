

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/category_screen.dart';
import 'package:stocklist_app/screen/stock_editor_screen.dart';
import 'package:stocklist_app/widget/box_widget.dart';

import 'boxes_screen.dart';

class FilterScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {

    final selectedBoxId = useState<int?>(null);
    final selectedCategoryId = useState<int?>(null);
    final selectedBox = useProvider(boxesStateProvider).safeGet(selectedBoxId.value);
    final selectedCategory = useProvider(categoriesStateProvider).safeGet(selectedCategoryId.value);

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

    void showSelectCategoryScreen() {
      final args = CategoryScreenArgs(
        selectable: CategorySelectable(
          selectedCategoryIds: selectedCategoryId.value == null ? [] : [selectedCategoryId.value!],
          maxSelectableCount: 1
        )
      );
      Navigator.of(context).pushNamed('/categories', arguments: args);
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
            ),
          ),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                hintText: "最大値",
                labelText: "最大値",
              ),
              keyboardType: TextInputType.number,
            )
          )
        ],
      );
    }
    Widget buildExpirationDateRangeForm() {
      return Row(
        children: [
          Flexible(
            child: TextField(
              focusNode: AlwaysDisabledFocusNode(),
              decoration: InputDecoration(
                hintText: "開始日",
                  labelText: "開始日"
              ),
              onTap: () {
              },
            )
          ),
          Flexible(
            child: TextField(
              focusNode: AlwaysDisabledFocusNode(),
              decoration: InputDecoration(
                hintText: "終了日",
                labelText: "終了日"
              ),
              onTap: () {

              },
            )
          )
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("条件を選択")
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


          Text("カテゴリ"),
          ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text("カテゴリを選択"),
            leading: Icon(Icons.category),
            onTap: () {
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