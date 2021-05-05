

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/box.dart';




class BoxListTile extends StatelessWidget {

  final Box box;

  BoxListTile({required this.box});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.all_inbox_rounded),
      title: Text(box.name),
    );
  }


}

class NodeGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


