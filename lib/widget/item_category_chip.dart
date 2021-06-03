

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/category.dart';

class ItemCategoryChip extends StatelessWidget {
  final Category _category;
  final VoidCallback onPressed;
  ItemCategoryChip(this._category, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return ActionChip(label: Text(_category.path), onPressed: onPressed);
  }
}