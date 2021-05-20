
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/box.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';

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
    final box = useProvider(boxesStateProvider).firstWhere((Box box)=> box.id == stock.boxId);
    return Card(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Text(
                    box.name,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                  margin: EdgeInsets.all(8),
                ),

                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: (){

                  }
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),

            StockCountWidget(count: stock.count, countChangedListener: (int count){

            }),

          ],

        ),
        padding: EdgeInsets.all(16),
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

enum StockCardAction {
  EDIT, DELETE
}

/// 想定されるアクション[編集、削除]
class StockPopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text(""),
          )
        ];
      }
    );
  }
}