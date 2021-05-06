


import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ItemEditorScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final _nameFieldController = useTextEditingController();
    final _descriptionFieldController = useTextEditingController();
    final picker = ImagePicker();
    final pickedFile = useState<File?>(null);

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
    return Scaffold(
      appBar: AppBar(
        title: Text("物を追加する"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: TextField(
              controller: _nameFieldController,
              decoration: InputDecoration(
                labelText: "名称",
                hintText: "物の名称を入力して下さい"
              ),

            ),
          ),
          if(pickedFile.value == null)
            Container(
              child: Image.asset("images/no_image_500.png"),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            )
          else
            Container(
              child: Image.file(pickedFile.value!),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            ),

          ElevatedButton(onPressed: (){
            _showPickTypeDialog();
          }, child: Text("写真を変更する")),
          Container(
            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: TextField(
              controller: _descriptionFieldController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "物についての説明",
                labelText: "説明"
              ),
            )
          )

        ],
      ),
    );
  }


}