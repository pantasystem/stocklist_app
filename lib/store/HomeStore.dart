import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/home.dart';
import 'package:stocklist_app/entity/user.dart';
import 'package:stocklist_app/main.dart';

class HomeState {
  final Home? home;
  HomeState({required this.home});
}
class HomeStore extends StateNotifier {
  HomeStore() : super(HomeState(home: null));

  Future fetch() async{
    final res = await stocklistClient.fetchMyHome();
    final users = res.members.map((e) => User(id: e.id, homeId: e.homeId, name: e.name)).toList();
    final h = Home(id: res.id, name: res.name, members: users);
    this.state = HomeState(home: h);
  }


  void clear() {
    this.state = HomeState(home: null);
  }
}