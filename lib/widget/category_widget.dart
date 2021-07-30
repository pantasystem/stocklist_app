

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stocklist_app/entity/category.dart';

class CategoryListTile extends StatelessWidget {

  final Category category;
  final bool isSelected;
  final VoidCallback? onTap;
  final OnCategoryActioned? onCategoryActioned;

  CategoryListTile(this.category, { this.isSelected = false, this.onTap, this.onCategoryActioned});

  @override
  Widget build(BuildContext context) {
    Widget? buildTrailing() {
      if(onCategoryActioned == null) {
        return null;
      }
      return PopupMenuButton<CategoryListTileAction>(
        icon: Icon(Icons.more_vert),
        itemBuilder: (context){
          return [
            PopupMenuItem(child: Text("削除"),value: CategoryListTileAction.DELETE),
            PopupMenuItem(child: Text("編集"),value: CategoryListTileAction.EDIT),
          ];
        },
        onSelected: (v){
          onCategoryActioned?.call(category, v);
        },
      );
    }
    return ListTile(
      leading: Icon(Icons.category),
      title: Text(category.path),
      onTap: this.onTap ,
      selected: isSelected,
      trailing: buildTrailing(),

    );
  }
}

enum CategoryListTileAction {
  EDIT, DELETE
}

typedef OnClickCategoryListener = Function(Category);
typedef OnCategoryActioned = Function(Category, CategoryListTileAction);

class CategoryListView extends StatelessWidget {

  final List<Category> categories;
  final Set<int>? selectedCategoryIds;
  final OnClickCategoryListener? listener;
  final bool isSelectable;
  final OnCategoryActioned? onCategoryActioned;
  CategoryListView({required this.categories, this.selectedCategoryIds, this.listener, this.isSelectable = false, this.onCategoryActioned});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CategoryListTile(
          categories[index],
          onTap: this.listener == null ? null : () {
            listener!(categories[index]);
          },
          isSelected: this.isSelectable && (selectedCategoryIds?.any((element) => element == categories[index].id)?? false),
          onCategoryActioned: onCategoryActioned,
        );
      },
      itemCount: categories.length,
    );
  }
}

class CategorySelectionListTile extends StatelessWidget {
  final VoidCallback? onTap;
  final Category? category;
  final String? errorText;

  CategorySelectionListTile({ this.onTap, this.category, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(category == null)
          ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text("カテゴリを選択"),
            leading: Icon(Icons.category),
            onTap: onTap,
            subtitle: errorText == null ? null : Text(
              errorText!,
              style: TextStyle(
                  color: Theme.of(context).errorColor
              ),
            ),
          ),
        if(category != null)
          ListTile(
            leading: Icon(Icons.category),
            title: Text(category!.path),
            onTap: this.onTap ,
            selected: true,
            subtitle: errorText == null ? null : Text(
              errorText!,
              style: TextStyle(
                color: Theme.of(context).errorColor
              ),
            ),

          )
      ],
    );
  }
}