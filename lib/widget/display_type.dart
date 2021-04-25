import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/display_type.dart';

class DisplayTypeIconButton extends StatelessWidget {
  final DisplayType type;
  final VoidCallback callback;
  DisplayTypeIconButton(this.type, this.callback);
  @override
  Widget build(BuildContext context) {
    if(type == DisplayType.GRID) {
      return IconButton(onPressed: callback, icon: Icon(Icons.grid_view));
    }else {
      return IconButton(onPressed: callback, icon: Icon(Icons.list));
    }
  }
}