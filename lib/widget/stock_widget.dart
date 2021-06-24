
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/stock_editor_screen.dart';
import 'package:stocklist_app/widget/item_widget.dart';

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
                  child: Row(
                    children: [
                      ItemThumbnail(item.imageUrl, 24.0),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text(
                          item.name,
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      ),

                    ],
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
            Container(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.all_inbox),
                  SizedBox(width: 8),
                  Text(
                      box.name
                  )
                ],
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if(stock.expirationDate != null)
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('消費期限:'),
                        SizedBox(width: 2),
                        Text(DateFormat.yMd(Intl.defaultLocale).format(stock.expirationDate!))
                      ],
                    ),
                  ),
                if(stock.expirationDate == null)
                  Container(),
                StockCountWidget(count: stock.count, countChangedListener: (int count){

                }),

              ],
            ),



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
    return TextButton(onPressed: (){},
      child: Row(
        children: [
          Icon(Icons.remove_circle_outline),
          Text('$count個')
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      )
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