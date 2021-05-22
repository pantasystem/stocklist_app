
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stocklist_app/entity/category.dart';

class SearchScreen extends HookWidget {

  final Category? initialCurrentCategory;
  //final Node? initialCurrentNode;
  SearchScreen({this.initialCurrentCategory, });

  @override
  Widget build(BuildContext context) {

    //final currentNodeState = useState(initialCurrentNode);
    return Scaffold(
      appBar: AppBar(
        title: Text("検索"),
        actions: [],
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: [
          Text("カテゴリー"),
          ElevatedButton(
            onPressed: (){

            },
            child: Text("カテゴリーを選択"),
          ),
          Text("収納"),
          ElevatedButton(
            onPressed: (){

            },
            child: Text("収納を選択"),
          ),

        ],
      ),
    );
  }


}
