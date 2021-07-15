
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/display_type.dart';
import 'package:stocklist_app/screen/boxes_screen.dart';
import 'package:stocklist_app/screen/category_screen.dart';
import 'package:stocklist_app/screen/filter_screen.dart';
import 'package:stocklist_app/screen/home_screen.dart';
import 'package:stocklist_app/screen/item_detail_screen.dart';
import 'package:stocklist_app/screen/item_editor_screen.dart';
import 'package:stocklist_app/screen/item_screen.dart';
import 'package:stocklist_app/screen/shopping_list_screen.dart';
import 'package:stocklist_app/screen/stock_editor_screen.dart';
import 'package:stocklist_app/store/box_store.dart';
import 'package:stocklist_app/store/category_store.dart';
import 'package:stocklist_app/store/item_store.dart';
import 'package:stocklist_app/store/shopping_list_store.dart';
import 'package:stocklist_app/store/stock_store.dart';
import 'package:stocklist_app/store_adder.dart';

final StateNotifierProvider<DisplayTypeState, DisplayType> displayType = StateNotifierProvider((ref)=> DisplayTypeState(DisplayType.LIST));
final itemsStateProvider = StateNotifierProvider((ref)=> ItemStore([], ref.read));
final stocksStateProvider = StateNotifierProvider((ref)=> StockStore(ref.read));
final boxesStateProvider = StateNotifierProvider((ref)=> BoxStore(ref.read));
final storeAdder = Provider((ref)=> StoreAdder(ref.read));
final stocklistClient = StocklistClient(const String.fromEnvironment('API_BASE_URL'), '1|test-1');
final categoriesStateProvider = StateNotifierProvider((ref)=> CategoryStore());
final shoppingListStoreProvider = StateNotifierProvider((ref) => ShoppingListStore());

void main() {
  runApp(ProviderScope(child: StocklistApp()));
}


class StocklistApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //final items = makeItems(homeId: 1, count: 20);
    //context.read(itemsStateProvider.notifier).addAll(items);

    return MaterialApp(
      initialRoute: '/home',
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => MainScreen(),
        '/items/create': (BuildContext context) => ItemEditorScreen(),
        '/items/show': (BuildContext context) => ItemDetailScreen(),
        '/items': (BuildContext context) => ItemsScreen(),
        '/stocks/edit': (BuildContext context) => StockEditorScreen(),
        '/boxes': (BuildContext context) => BoxesScreen(),
        '/items/filter': (BuildContext context) => FilterScreen(),
        '/categories': (BuildContext context) => CategoryScreen(),
      }
    );

  }
}

class MainScreen extends HookWidget {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> screens = [
    HomeScreen(),
    BoxesScreen(),
    ItemsScreen(),
    CategoryScreen(),
    ShoppingListScreen()
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
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/items/create");
        },
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),*/
      /*bottomNavigationBar: BottomAppBar(
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
      )*/

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.storage), label: '収納'),
          BottomNavigationBarItem(icon: Icon(Icons.all_out), label: 'ものを探す'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'カテゴリー'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,), label: '買い物リスト')
        ],
        currentIndex: selectedIndex.value,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: selected,
      ),
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


