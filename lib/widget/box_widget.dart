

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/box.dart';

typedef OnBoxSelectedListener = Function(int);

class BoxListView extends StatelessWidget {

  final List<Box> boxes;
  final List<int> selectedBoxIds;
  final OnBoxSelectedListener? listener;
  final bool isSelectable;

  BoxListView({required this.boxes, this.selectedBoxIds = const [], this.listener, this.isSelectable = false});


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        return BoxListTile(
          box: boxes[index],
          isSelectable: this.isSelectable,
          isSelected: selectedBoxIds.any((element) => element == boxes[index].id),
          listener: this.listener == null ? null : () {
            this.listener?.call(boxes[index].id);
          }
        );
      },
      itemCount: boxes.length
    );
  }
}



class BoxListTile extends StatelessWidget {

  final Box box;
  final bool isSelectable;
  final bool isSelected;
  final VoidCallback? listener;

  BoxListTile({required this.box, this.isSelectable = false, this.isSelected = false, this.listener});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.all_inbox_rounded),
      title: Text(box.name),
      selected: this.isSelected,
      onTap: this.listener != null ? this.listener : null
    );
  }


}


