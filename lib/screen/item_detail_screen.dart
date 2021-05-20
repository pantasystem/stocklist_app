

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/entity/stock.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/stock_editor_screen.dart';
import 'package:stocklist_app/store/stock_store.dart';
import 'package:stocklist_app/widget/stock_widget.dart';

class ItemArgs {
  final int itemId;
  ItemArgs(this.itemId);
}
class ItemDetailScreen extends HookWidget {



  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)?.settings.arguments as ItemArgs;
    final item = useProvider(itemsStateProvider).get(itemArgs.itemId);


    final itemStoreProvider = useProvider(itemsStateProvider.notifier);
    final List<Stock> stocks = useProvider(stocksStateProvider).stocks.where((Stock stock) => stock.itemId == itemArgs.itemId).toList();

    useEffect((){
      Future.microtask(() => itemStoreProvider.fetch(itemArgs.itemId).catchError((e) {
        print(e);
      }));
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
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text(
              "収納別一覧",
              style: TextStyle(
                  fontSize: 24
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return StockCardWidget(stocks[index]);
            },
            itemCount: stocks.length,
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
          ),


          if(item == null)
            CircularProgressIndicator(),



        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          if(item != null) {
            Navigator.of(context).pushNamed('/stocks/edit', arguments: StockEditorArgs(item: item));
          }

        },
        label: Text("収納する"),
        icon: Icon(Icons.add)
      ),

    );
  }
}

class ItemDetailContentWidget extends StatelessWidget {

  final Item item;

  ItemDetailContentWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      child : ListView(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
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

          if(item.description.isNotEmpty)
            Container(
                margin: EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Text(
                    item.description
                )
            ),


        ],
      )
    );

  }
}
