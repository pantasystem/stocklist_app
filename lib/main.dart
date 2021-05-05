
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/display_type.dart';
import 'package:stocklist_app/fake.dart';
import 'package:stocklist_app/screen/category_screen.dart';
import 'package:stocklist_app/screen/item_editor_screen.dart';
import 'package:stocklist_app/screen/search_screen.dart';
import 'package:stocklist_app/store/item_store.dart';
import 'package:stocklist_app/widget/box_and_item.dart';

final StateNotifierProvider<DisplayTypeState, DisplayType> displayType = StateNotifierProvider((ref)=> DisplayTypeState(DisplayType.LIST));
final itemsStateProvider = StateNotifierProvider((ref)=> ItemMutation([]));

void main() {
  runApp(ProviderScope(child: StocklistApp()));
}


class StocklistApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final items = makeItems(homeId: 1, count: 20);

    return MaterialApp(
      initialRoute: '/home',
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => MainScreen(),
        '/items/create': (BuildContext context) => ItemEditorScreen()
      }
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

    final selected = (int index) {
      selectedIndex.value = index;
    };
    return Scaffold(
      body: screens[selectedIndex.value],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/items/create");
        },
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildItem(icon: Icons.home, onPressed: selected, index: 0, currentIndex: selectedIndex.value),
              buildItem(icon: Icons.search, onPressed: selected, index: 1, currentIndex: selectedIndex.value),
              SizedBox(width: 50.0),
              buildItem(icon: Icons.storage, onPressed: selected, index: 2, currentIndex: selectedIndex.value),
              buildItem(icon: Icons.category, onPressed: selected, index: 3, currentIndex: selectedIndex.value)
            ],
          )
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white
      )
    );
  }

  Widget buildItem({required IconData icon, required onPressed, required int index, required int currentIndex}) {
    final isSelected = index == currentIndex;
    return IconButton(onPressed: (){
      onPressed(index);
    },
      icon: Icon(icon, color: isSelected ? Colors.blue.shade900 : Colors.blue.shade400,),
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


class BoxScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final boxes = makeBoxes();




    return Scaffold(
      appBar: AppBar(
        title: Text("収納別"),
      ),
      body: BoxAndItemListView(
        items: List.empty(),
        boxes: boxes,
      )
    );
  }
}


