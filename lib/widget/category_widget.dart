

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/category.dart';

class CategoryListTile extends StatelessWidget {

  final Category category;
  final bool isSelected;
  final VoidCallback? onTap;

  CategoryListTile(this.category, { this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.category),
      title: Text(category.path),
      onTap: this.onTap ,
      selected: isSelected,

    );
  }
}