import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/display_type.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/fake.dart';
import 'package:stocklist_app/widget/item_widget.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/widget/display_type.dart';

class CategoryScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final itemsState = useState<List<Item>>([]);
    final type = useProvider(displayType);


    itemsState.value = makeItems(homeId: 1, count: 20);
    return Scaffold(
      appBar: AppBar(
        title: Text("カテゴリー"),
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: [
          Text("現在のカテゴリー"),
          BreadCrumb(items:
            [
              BreadCrumbItem(content: Text("category1")),
              BreadCrumbItem(content: Text("category2")),
              BreadCrumbItem(content: Text("category3")),
            ],
            divider: Icon(Icons.chevron_right),
          ),

          Card(

            elevation: 2.0,
            child: ListView(
              padding: EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 4.0),
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                Container(child: Text("カテゴリー", style: TextStyle(fontSize: 20.0),), padding: EdgeInsets.fromLTRB(8, 0, 0, 0),),
                for(int i = 0; i < 2; i ++)
                  ListTile(title: Text("category" + i.toString()), leading: Icon(Icons.arrow_forward_ios),),
              ],
            ),
          ),
          SizedBox(height: 8),
          Card(
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text("物一覧", style: TextStyle(fontSize: 20.0),),
                        DisplayTypeIconButton(
                          type,
                          () {
                            context.read(displayType.notifier).toggle();
                          })
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
                  ),
                  buildItemsView(itemsState.value, type)
                ],

              )
            )
          ),

      ],),
    );
  }

  Widget buildItemsView(List<Item> items, DisplayType type) {
    if(type == DisplayType.LIST) {
      return ItemListView(
        items: items,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      );
    }else{
      return ItemsGridView(
        items: items,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      );
    }

  }



}