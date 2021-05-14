

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/widget/item_widget.dart';

class ItemsScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final items = useProvider(itemsStateProvider);

    final fetch = useProvider(itemsStateProvider.notifier);

    print("before useEffect");
    useEffect((){
      Future.microtask(() => fetch.fetchAll());
    },[]);

    return Scaffold(
      appBar: AppBar(
        title: Text("物一覧"),
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