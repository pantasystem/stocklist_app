
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/node.dart';
import 'package:stocklist_app/fake.dart';

class NodeStore extends StateNotifier<List<Node>> {
  NodeStore() : super([]);

  List<Node> children(Node node) {
    final currentNodePath = node.path.split("/").where((element) => element.isNotEmpty).map((e) => int.parse(e));

    // 一つ下の階層のNodeのみを返す処理
    return this.state.where((element){
      return element.path.startsWith(node.path);
    }).where((element){
      return element.path.split("/").where((element) => element.isNotEmpty).map((e) => int.parse(e)).length - currentNodePath.length == 1;
    }).toList();
  }

  Node get(int nodeId) {
    return state.where((element) => element.id == nodeId).first;
  }

  List<Node> pathNodes(Node node) {
    final path = node.path.split("/").where((element) => element.isNotEmpty).map((e) => int.parse(e));
    return path.map((e) => get(e)).toList();
  }

  Future<List<Node>> load() async{
    this.state = makeNodes();
    return this.state;
  }

}