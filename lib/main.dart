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
      home: MainScreen()
    );

  }
}

class MainScreen extends HookWidget {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    BoxScreen(),
    CategoryScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    return Scaffold(
      body: screens[selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "ホーム"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "探す"),
          BottomNavigationBarItem(icon: Icon(Icons.storage), label: "収納"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "カテゴリー")
        ],
        onTap: (index){
          selectedIndex.value = index;
        },
        currentIndex: selectedIndex.value,
        selectedItemColor: Theme.of(context).primaryColor
      ),
    );
  }


}

class HomeScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"),
      ),
      body: Center(child: Text("未実装"),),
    );
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
    return Scaffold(
      body: Center(child: Text("未実装"),),
    );
  }
}

class CategoryScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("未実装"),),
    );
  }
}

class BoxScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("未実装"),),
    );
  }
}


