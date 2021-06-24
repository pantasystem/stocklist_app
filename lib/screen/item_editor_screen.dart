


import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/screen/item_detail_screen.dart';
import 'package:stocklist_app/widget/category_widget.dart';

import '../main.dart';
import 'category_screen.dart';

class ItemEditorScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final _nameFieldController = useTextEditingController();
    final _descriptionFieldController = useTextEditingController();
    final picker = ImagePicker();
    final pickedFile = useState<File?>(null);
    final isDisposable = useState<bool>(false);
    final categoryId = useState<int?>(null);

    final validationError = useState<ValidationException?>(null);

    Future _pickImageFromCamera() async{
      final image = await picker.getImage(source: ImageSource.camera);
      final path = image?.path;
      if(path != null) {
        pickedFile.value = File(path);
      }
    }

    Future _pickImageFromGallery() async {
      final image = await picker.getImage(source: ImageSource.gallery);
      final path = image?.path;
      if(path != null) {
        pickedFile.value = File(path);
      }
    }

    void showSelectCategoryScreen() async {
      final args = CategoryScreenArgs(
          selectable: CategorySelectable(
              selectedCategoryIds: categoryId.value == null ? [] : [categoryId.value!],
              maxSelectableCount: 1
          )
      );
      final res = await Navigator.of(context).pushNamed('/categories', arguments: args);
      if(res is List && res.length > 0) {
        categoryId.value = res[0];
      }else if(res is List) {
        categoryId.value = null;
      }
    }

    void create() {

      final file = pickedFile.value;

      context.read(itemsStateProvider.notifier).create(
        name: _nameFieldController.text,
        isDisposable: isDisposable.value,
        description: _descriptionFieldController.text,
        image: file,
        categoryId: categoryId.value
      ).then((value){
        Navigator.of(context).popAndPushNamed('/items/show', arguments: ItemArgs(value.id));
      }).catchError((e){
        if(e is ValidationException) {
          validationError.value = e;
        }
      });

    }

    void _showPickTypeDialog() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("写真を撮影"),
                onTap: (){
                  Navigator.of(context).pop();
                  _pickImageFromCamera();
                },
              ),
              ListTile(
                title: Text("ギャラリーから選択"),
                onTap: (){
                  Navigator.of(context).pop();
                  _pickImageFromGallery();
                },
              )
            ],
          );
        }
      );
    }

    Widget _buildImage() {
      Widget image;
      if(pickedFile.value == null) {
        image = Image.asset(
          "images/no_image_500.png",
          fit: BoxFit.cover,
        );
      }else{
        image = Image.file(
          pickedFile.value!,
          fit: BoxFit.cover,
        );
      }
      return image;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("物を追加する"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
        children: [

          Container(

            child: AspectRatio(
              aspectRatio: 4/3,
              child: _buildImage()
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          ),
          if(validationError.value?.safeGetErrorMessage('image') != null)
            Text(
              validationError.value!.safeGetErrorMessage('image')!,
              style: TextStyle(
                  color: Theme.of(context).errorColor
              ),
            ),
          ElevatedButton(
            onPressed: (){
              _showPickTypeDialog();
            },
            child: Text("写真を変更する")
          ),
          ListView(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
            children: [
              TextField(
                controller: _nameFieldController,
                decoration: InputDecoration(
                  labelText: "名称",
                  hintText: "物の名称を入力して下さい",
                  errorText: validationError.value?.safeGetErrorMessage('name')
                ),
              ),
              Container(
                child: CategorySelectionListTile(
                  onTap: (){
                    showSelectCategoryScreen();
                  },
                  category: useProvider(categoriesStateProvider).safeGet(categoryId.value),
                ),
                padding: EdgeInsets.only(top: 8, bottom: 8),
              ),
              SwitchListTile(
                  title: Text("消耗品です"),
                  value: isDisposable.value,
                  onChanged: (bool state){
                    isDisposable.value = state;
                  }

              ),
              TextField(
                controller: _descriptionFieldController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "物についての説明",
                  labelText: "説明",
                  errorText: validationError.value?.safeGetErrorMessage('description')
                ),
              )

            ],
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          create();
        },
        label: Text("作成"),
        icon: Icon(Icons.save),
      ),
    );
  }


}