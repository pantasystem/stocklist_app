

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
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
    List<Stock>? stocks = useProvider(stocksStateProvider.notifier).filterByItemId(itemArgs.itemId);


    final itemStoreProvider = useProvider(itemsStateProvider.notifier);

    useEffect((){
      Future.microtask(() => itemStoreProvider.fetch(itemArgs.itemId));
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(item?.name?? "Item詳細"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
        children: [


          if(item != null)
            ItemDetailContentWidget(item),
          if(item == null)
            CircularProgressIndicator(),
        ],
      ),

    );
  }
}

class ItemDetailContentWidget extends StatelessWidget {

  final Item item;

  ItemDetailContentWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image.network(
            item.imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (BuildContext context, e, s) {
              return Image.asset("images/no_image_500.png", width: 70.0);
            },
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Text(
            item.name,
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Text(
            item.description
          )
        )

      ],
    );
  }
}