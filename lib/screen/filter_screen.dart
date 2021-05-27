

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FilterScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("条件を選択")
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Text("収納場所"),
          ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text("収納場所を選択"),
            leading: Icon(Icons.all_inbox),
          ),

          Text("カテゴリ"),
          ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text("カテゴリを選択"),
            leading: Icon(Icons.category),
          ),
          Text("消費期限"),
          Container(
            padding: EdgeInsets.only(
              left: 8,
              right: 8
            ),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "開始日",
                        labelText: "開始日"
                    ),
                  )
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "終了日",
                      labelText: "終了日"
                    ),
                  )
                )
              ],
            ),
          ),

          Text("個数"),
          Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "最小値",
                    labelText: "最小値"
                  ),
                )
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "最大値",
                      labelText: "最大値"
                  ),
                )
              )
            ],
          )

        ],
      ),
    );
  }
}