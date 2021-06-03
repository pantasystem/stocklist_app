

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/category.dart';

class ItemCategoryChip extends StatelessWidget {
  final String path;
  final VoidCallback onPressed;
  ItemCategoryChip(this.path, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return ActionChip(label: Text(path), onPressed: onPressed);
  }
}