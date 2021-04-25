

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/node.dart';

import '../entity/node_type.dart';



class NodeListTile extends StatelessWidget {

  final Node node;

  NodeListTile({required this.node});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: buildIcon(node.type),
      title: Text(node.name),
    );
  }

  Widget buildIcon(NodeType type) {
    switch(type.name) {
      case "room":
        return Icon(Icons.sensor_door);
      default:
        return Icon(Icons.all_inbox_rounded);
    }
  }
}

class NodeGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


