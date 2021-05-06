

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/main.dart';

class ItemArgs {
  final int itemId;
  ItemArgs(this.itemId);
}
class ItemDetailScreen extends HookWidget {



  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)?.settings.arguments as ItemArgs;
    final item = useProvider(itemsStateProvider.notifier).get(itemArgs.itemId);


    return Scaffold(
      appBar: AppBar(
        title: Text(item?.name?? "Item詳細"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
        children: [
          if(item != null)
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Text(
                item.name,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),

          if(item != null)
            Image.network(item.imagePath),
          if(item == null)
            CircularProgressIndicator()
        ],
      ),

    );
  }
}