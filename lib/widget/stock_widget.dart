
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/stock_editor_screen.dart';

class StockListTile extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}

class StockCardWidget extends HookWidget {
  final Stock stock;
  StockCardWidget(this.stock);

  @override
  Widget build(BuildContext context) {
    final box = useProvider(boxesStateProvider).boxes.firstWhere((Box box)=> box.id == stock.boxId);
    final item = useProvider(itemsStateProvider).items.firstWhere((Item item) => item.id == stock.itemId);
    return Card(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    box.name,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),

                StockPopupMenu(
                  listener: (value) {
                    if(value == StockCardPopupMenuAction.EDIT) {
                      Navigator.of(context).pushNamed(
                        '/stocks/edit',
                        arguments: StockEditorArgs(
                          stock: stock,
                          item: item
                        ),
                      );
                    }
                  }
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),

            StockCountWidget(count: stock.count, countChangedListener: (int count){

            }),

          ],

        ),
      )


    );
  }
}

typedef CountChangedListener = void Function(int count);

class StockCountWidget extends StatelessWidget {

  final int count;
  final CountChangedListener countChangedListener;

  StockCountWidget({ required this.count, required this.countChangedListener });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(count > 0)
          IconButton(onPressed: (){
            countChangedListener(count + 1);
          }, icon: Icon(Icons.remove)),
        Text(count.toString()),
        IconButton(onPressed: (){}, icon: Icon(Icons.add)),

      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}

enum StockCardPopupMenuAction {
  EDIT, DELETE
}
typedef StockPopupMenuSelectedListener = Function(StockCardPopupMenuAction);

/// 想定されるアクション[編集、削除]
class StockPopupMenu extends StatelessWidget {

  final StockPopupMenuSelectedListener listener;

  StockPopupMenu({required this.listener});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text("編集"),
            value: StockCardPopupMenuAction.EDIT,
          ),
          PopupMenuItem(
            child: Text("削除"),
            value: StockCardPopupMenuAction.DELETE
          )
        ];
      },
      onSelected: listener,
    );
  }
}