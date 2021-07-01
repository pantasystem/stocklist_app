

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShoppingListScreen extends HookWidget {

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('買い物リスト'),
          bottom: TabBar(
            tabs: [
              Tab(child: Text('未達成'),),
              Tab( child: Text('達成済み'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {

          },
        ),
      )
    );
  }
}

