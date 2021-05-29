

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/filter/item_filter.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/items_state.dart';
import 'package:stocklist_app/widget/item_filter_chip.dart';
import 'package:stocklist_app/widget/item_widget.dart';

class ItemsScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    //final items = useProvider(itemsStateProvider);
    final sortSrc = useState(ItemSortSrc.CREATED);
    final itemFilter = useState(ItemFilter.fromList([]));
    final isSortDesc = useState(false);
    final items = useProvider(itemsStateProvider).filterAndSort(filter: itemFilter.value,src: sortSrc.value, isReverse: isSortDesc.value);

    final itemStore = useProvider(itemsStateProvider.notifier);


    useEffect((){
      Future.microtask(() => itemStore.fetchAll());
    },[]);

    void showSortBottomSheet() async{
      final src = await showModalBottomSheet<ItemSortSrc>(context: context, builder: (BuildContext context) {
        return ItemSortSrcComponent();
      });
      if(src != null) {
        sortSrc.value = src;
      }
    }

    void showFilterScreen() async {
      final res = await Navigator.of(context).pushNamed('/items/filter', arguments: itemFilter.value);
      if(res is ItemFilter) {
        itemFilter.value = res;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("物一覧"),
        bottom: PreferredSize(
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            constraints: BoxConstraints.expand(height: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child:
                  ListView.builder(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return ItemFilterChip(
                        itemFilter.value.toList()[index],
                        selected: true,
                        onSelected: (bool value) {
                          print("selected");
                          itemFilter.value = itemFilter.value.removeAndCopy(itemFilter.value.toList()[index].runtimeType);

                        },
                      );
                    },
                    itemCount: itemFilter.value.toList().length,
                    scrollDirection: Axis.horizontal,
                  )
                ),
                TextButton(onPressed: (){
                  showFilterScreen();
                }, child: Text("絞り込み"))
              ],
            ),
          ),
          preferredSize: Size(50, 50),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSortBottomSheet();
            },
            icon: Icon(Icons.sort)
          ),
          IconButton(
            onPressed: () {
              isSortDesc.value = !isSortDesc.value;
            },
            icon: isSortDesc.value ? Icon(Icons.arrow_downward) : Icon(Icons.arrow_upward)
          )
        ],
      ),
      body: ListView(
        children: [
          ItemListView(
            items: items,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),)
        ],
      ),
    );
  }

}

class ItemSortSrcComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("名前順",),
          onTap: (){
            Navigator.of(context).pop(ItemSortSrc.NAME);
          },
        ),
        ListTile(
          title: Text("作成日時順"),
          onTap: () {
            Navigator.of(context).pop(ItemSortSrc.CREATED);
          },
        ),
        ListTile(
          title: Text("更新日時順"),
          onTap: () {
            Navigator.of(context).pop(ItemSortSrc.UPDATED);
          },
        ),
        ListTile(
          title: Text("総数"),
          onTap: () {
            Navigator.of(context).pop(ItemSortSrc.QUANTITY);
          },
        )
      ],
    );

  }
}