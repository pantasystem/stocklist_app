
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
          NearExpirationDateItemsCard(),
          SizedBox(height: 8),
          StockoutItemsCard(),


        ],
      ),
    );
  }
}

class StockoutItemsCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = useProvider(itemsStateProvider).items;
    var filteredItems = items.where((element) => element.boxIds.isNotEmpty && element.itemQuantity == 0).toList();
    var itemsAllShow = useState(false);
    if(itemsAllShow.value && filteredItems.length > 3) {
      filteredItems = filteredItems.sublist(0, 3);
    }

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardTitle('在庫切れ'),
          Divider(
            height: 2,
          ),
          if(filteredItems.isNotEmpty)
            ItemListView(
              items: filteredItems,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              onItemSelected: (int index, Item item) {
                Navigator.of(context).pushNamed('/items/show', arguments: ItemArgs(item.id));
              },
            )
          else
            Container(
              child: Text("在庫は十分あります"),
              padding: EdgeInsets.all(16),
            ),
          Divider(
            height: 2,
          ),
          if(filteredItems.isNotEmpty)
            Container(
                alignment: Alignment.center,
                child: ExpandableButton(expanded: itemsAllShow.value, onPressed: ()=>itemsAllShow.value = !itemsAllShow.value)
            ),


        ],
      ),
    );
  }
}

class NearExpirationDateItemsCard extends HookWidget {
  @override
  Widget build(BuildContext context) {
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

    return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitle('消費期限が近い物'),
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
              child: ExpandableButton(expanded: itemsAllShow.value, onPressed: ()=>itemsAllShow.value = !itemsAllShow.value)
            )

          ],
        )
    );
  }
}

class ExpandableButton extends StatelessWidget {
  final bool expanded;
  final VoidCallback onPressed;
  ExpandableButton({required this.expanded, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: expanded ? Icon(Icons.expand_less) : Icon(Icons.expand_more_outlined), onPressed: onPressed);
  }
}
class CardTitle extends StatelessWidget {
  final String title;
  CardTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.title,
        style: TextStyle(
            fontSize: 20
        ),
      ),
      padding: EdgeInsets.all(16),
    );
  }
}