

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/state/items_state.dart';
import 'package:stocklist_app/widget/item_widget.dart';

class ItemsScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    //final items = useProvider(itemsStateProvider);
    final sortSrc = useState(ItemSortSrc.CREATED);
    final isSortDesc = useState(false);
    final items = useProvider(itemsStateProvider).sorted(src: sortSrc.value, isReverse: isSortDesc.value);

    final fetch = useProvider(itemsStateProvider.notifier);

    print("before useEffect");
    useEffect((){
      Future.microtask(() => fetch.fetchAll());
    },[]);

    return Scaffold(
      appBar: AppBar(
        title: Text("物一覧"),
        actions: [
          IconButton(
            onPressed: () {

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