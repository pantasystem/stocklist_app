import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/display_type.dart';
import 'package:stocklist_app/entity/item.dart';
import 'package:stocklist_app/fake.dart';
import 'package:stocklist_app/item_widget.dart';
import 'package:stocklist_app/main.dart';

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
                        buildDisplayTypeButton(
                          type,
                          () {
                            context.read(displayType.notifier).toggle();
                          })
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
                  ),
                  buildItemsView(itemsState.value)
                ],

              )
            )
          ),

      ],),
    );
  }

  Widget buildItemsView(List<Item> items) {
    return ListView.builder(itemBuilder: (builder, int index){
      return ItemListTileWidget(item: items[index]);
    },
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: items.length,
    );
  }

  Widget buildDisplayTypeButton(DisplayType type, VoidCallback onTap) {
    if(type == DisplayType.GRID) {
      return IconButton(onPressed: onTap, icon: Icon(Icons.grid_view));
    }else {
      return IconButton(onPressed: onTap, icon: Icon(Icons.list));
    }
  }

}