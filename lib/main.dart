
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/display_type.dart';
import 'package:stocklist_app/screen/account_screen.dart';
import 'package:stocklist_app/screen/boxes_screen.dart';
import 'package:stocklist_app/screen/category_screen.dart';
import 'package:stocklist_app/screen/filter_screen.dart';
import 'package:stocklist_app/screen/home_screen.dart';
import 'package:stocklist_app/screen/item_detail_screen.dart';
import 'package:stocklist_app/screen/item_editor_screen.dart';
import 'package:stocklist_app/screen/item_screen.dart';
import 'package:stocklist_app/screen/join_screen.dart';
import 'package:stocklist_app/screen/login_screen.dart';
import 'package:stocklist_app/screen/member_screen.dart';
import 'package:stocklist_app/screen/register_screen.dart';
import 'package:stocklist_app/screen/shopping_list_detail_screen.dart';
import 'package:stocklist_app/screen/shopping_list_screen.dart';
import 'package:stocklist_app/screen/stock_editor_screen.dart';
import 'package:stocklist_app/store/account_store.dart';
import 'package:stocklist_app/store/box_store.dart';
import 'package:stocklist_app/store/category_store.dart';
import 'package:stocklist_app/store/item_store.dart';
import 'package:stocklist_app/store/shopping_list_store.dart';
import 'package:stocklist_app/store/stock_store.dart';
import 'package:stocklist_app/store_adder.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SharedPreferenceTokenStore extends TokenStore{
  SharedPreferences? _pref;
  @override
  String? get() {
    return _pref?.getString('TOKEN');
  }

  @override
  void save(String? token) {
    _pref?.setString('TOKEN', token ?? '');
  }

  Future init() async{
    this._pref = await SharedPreferences.getInstance();
  }
}

class ConstantTokenStore extends TokenStore {
  @override
  String? get() {
    return '1|test-1';
  }

  @override
  void save(String? token) {}

}

final TokenStore tokenStore = SharedPreferenceTokenStore();
final StateNotifierProvider<DisplayTypeState, DisplayType> displayType = StateNotifierProvider((ref)=> DisplayTypeState(DisplayType.LIST));
final itemsStateProvider = StateNotifierProvider((ref)=> ItemStore([], ref.read));
final stocksStateProvider = StateNotifierProvider((ref)=> StockStore(ref.read));
final boxesStateProvider = StateNotifierProvider((ref)=> BoxStore(ref.read));
final storeAdder = Provider((ref)=> StoreAdder(ref.read));
final stocklistClient = StocklistClient(const String.fromEnvironment('API_BASE_URL'), tokenStore);
final categoriesStateProvider = StateNotifierProvider((ref)=> CategoryStore());
final shoppingListStoreProvider = StateNotifierProvider((ref) => ShoppingListStore(ref.read));
final accountStoreProvider = StateNotifierProvider((ref) => AccountStore(ref.read));

void main() {
  runApp(ProviderScope(child: StocklistApp()));
}



class StocklistApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //final items = makeItems(homeId: 1, count: 20);
    //context.read(itemsStateProvider.notifier).addAll(items);
    final isDark = false;

    final normalTheme = ThemeData(
      primaryColor: Color.fromARGB(0xff, 0x00, 0x96, 0x88),
      accentColor: Color.fromARGB(0xff, 0x4c, 0xaf, 0x50),
    );


    return MaterialApp(
      initialRoute: '/home',
      theme: isDark ? ThemeData.dark() : normalTheme,
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => MainScreen(),
        '/items/create': (BuildContext context) => ItemEditorScreen(),
        '/items/show': (BuildContext context) => ItemDetailScreen(),
        '/items': (BuildContext context) => ItemsScreen(),
        '/stocks/edit': (BuildContext context) => StockEditorScreen(),
        '/boxes': (BuildContext context) => BoxesScreen(),
        '/items/filter': (BuildContext context) => FilterScreen(),
        '/categories': (BuildContext context) => CategoryScreen(),
        '/shopping-lists/detail': (BuildContext context) => ShoppingListDetailScreen(),
        '/shopping-lists': (BuildContext context) => ShoppingListScreen(),
        '/register': (BuildContext context) => RegisterScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/members': (BuildContext context) => MemberScreen(),
        '/account': (BuildContext context) => AccountScreen(),
        '/join': (BuildContext context) => JoinScreen(),
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
    final accountState = useProvider(accountStoreProvider);
    final accountStore = useProvider(accountStoreProvider.notifier);



    useEffect((){
      Future.microtask(()async{
        if(tokenStore is SharedPreferenceTokenStore) {
          await (tokenStore as SharedPreferenceTokenStore).init();
        }
      });
      Future.microtask(() => accountStore.fetchMe());
    },[]);

    if(accountState.type == AccountStateType.UNAUTHORIZED) {
      return LoginScreen();
    }

    return Scaffold(
      body: screens[selectedIndex.value],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


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


