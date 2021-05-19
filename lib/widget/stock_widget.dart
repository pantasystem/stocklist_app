
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    final box = useProvider(boxesStateProvider.notifier).get(stock.boxId!)!;
    return Card(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Text(box.name),
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                IconButton(onPressed: (){}, icon: Icon(Icons.repeat_one_on_outlined))
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            )
          ],

        ),
        padding: EdgeInsets.all(16),
      )


    );
  }
}