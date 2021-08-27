
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
  AccountStore() : super(AccountState(type: AccountStateType.LOADING, user: null));

  Future fetchMe() async {
    try {
      final dto = await stocklistClient.fetchMe();
      this.state = this.state.authorized(User(id: dto.id, homeId: dto.homeId, name: dto.name));
    } on AuthorizationException {
      this.state = this.state.unauthorized();
    }
  }

  Future login({required String? email, required String password}) async {

    final user = await stocklistClient.login(email: email, password: password);
    final e = User(id: user.id, homeId: user.homeId, name: user.name);
    this.state = this.state.authorized(e);
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
  }
}