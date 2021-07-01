
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/widget/item_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_detail_screen.dart';
class HomeScreen extends HookWidget {

  Widget build(BuildContext context) {

    final itemStore = useProvider(itemsStateProvider.notifier);
    final List<Item> items = useProvider(itemsStateProvider).items;
    final itemsAllShow = useState(false);

    var a = items.sorted((a, b) {
      final aMax = a.stockExpiries.maxOrNull;
      final bMax = b.stockExpiries.maxOrNull;
      if(aMax == null && bMax == null) {
        return 0;
      }
      if(aMax == null) {
        return 1;
      }
      if(bMax == null) {
        return -1;
      }
      return aMax.compareTo(bMax);
    }).toList();
    if(!itemsAllShow.value && a.length > 3) {
      a = a.sublist(0, 3);
    }
    if(a.length > 10) {
      a = a.sublist(0, 10);
    }

    print(items);
    useEffect(() {
      Future.microtask(() => itemStore.fetchAll());
    }, []);
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム')
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    '消費期限が近い物',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                ),
                Divider(
                  height: 2,
                ),
                ItemListView(
                  items: a,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  onItemSelected: (int index, Item item) {
                    Navigator.of(context).pushNamed('/items/show', arguments: ItemArgs(item.id));
                  },
                ),
                Divider(
                  height: 2,
                ),
                Container(
                  alignment: Alignment.center,
                  child: IconButton(
                    icon: itemsAllShow.value ? Icon(Icons.expand_less) : Icon(Icons.expand_more_outlined), onPressed: (){
                      itemsAllShow.value = !itemsAllShow.value;
                  })
                )

              ],
            )
          )
        ],
      ),
    );
  }
}