import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/display_type.dart';
import 'package:stocklist_app/fake.dart';
import 'package:stocklist_app/item_widget.dart';
import 'package:stocklist_app/store/item_store.dart';

final displayType = StateNotifierProvider((ref)=> DisplayTypeState(DisplayType.LIST));
final itemsStateProvider = StateNotifierProvider((ref)=> ItemMutation([]));

void main() {
  runApp(StocklistApp());
}


class StocklistApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final items = makeItems(homeId: 1, count: 20);

    return MaterialApp(
      home: Scaffold(
        body: ItemListView(items: items,),
      )
    );

  }
}

class MainScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class HomeScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ItemsScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Items"),
    );

  }
}

class SearchScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class CategoryScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}




