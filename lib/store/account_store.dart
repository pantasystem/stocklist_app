
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/entity/user.dart';

import '../main.dart';

enum AccountStateType {
  LOADING, UNAUTHORIZED, AUTHORIZED
}
class AccountState {
  final AccountStateType type;
  final User? user;
  AccountState({ this.type = AccountStateType.LOADING, this.user});

  AccountState authorized(User user) {
    return AccountState(user: user, type: AccountStateType.AUTHORIZED);
  }

  AccountState unauthorized() {
    return AccountState(user: null, type: AccountStateType.UNAUTHORIZED);
  }

  AccountState loading() {
    return AccountState(user: this.user, type: AccountStateType.LOADING);
  }
}

class AccountStore extends StateNotifier<AccountState> {
  final Reader reader;
  AccountStore(this.reader) : super(AccountState(type: AccountStateType.LOADING, user: null));

  Future fetchMe() async {
    try {
      final dto = await stocklistClient.fetchMe();
      this.state = this.state.authorized(User(id: dto.id, homeId: dto.homeId, name: dto.name));
    } on AuthorizationException catch(_){
      this.state = this.state.unauthorized();
    }
  }

  Future join({
    required String token,
    required String email,
    required String name,
    required String password
  }) async {
    final user = await stocklistClient.join(email: email, password: password, token: token, name: name);
    final entity = User(id: user.id, homeId: user.homeId, name: user.name);
    this.state = this.state.authorized(entity);
    this.clearStores();

  }

  Future login({required String? email, required String password}) async {

    final user = await stocklistClient.login(email: email, password: password);
    final e = User(id: user.id, homeId: user.homeId, name: user.name);
    this.state = this.state.authorized(e);
    this.clearStores();

  }

  Future register({
    required String? email,
    required String? userName,
    required String? homeName,
    required String? password
  }) async {
    final dto = await stocklistClient.register(email: email, userName: userName, homeName: homeName, password: password);
    final user = User(id: dto.id, homeId: dto.homeId, name: dto.name);
    this.state = this.state.authorized(user);
    this.clearStores();
  }

  void logout() {
    tokenStore.save(null);
    this.state = this.state.unauthorized();
    this.clearStores();
  }

  void clearStores() {
    this.reader.call(categoriesStateProvider.notifier).clear();
    this.reader.call(boxesStateProvider.notifier).clear();
    this.reader.call(stocksStateProvider.notifier).clear();
    this.reader.call(itemsStateProvider.notifier).clear();
    this.reader.call(shoppingListStoreProvider.notifier).clear();
    this.reader.call(homeStoreProvider.notifier).clear();

  }
}