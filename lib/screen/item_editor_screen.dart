

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ItemEditorScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final _nameFieldController = useTextEditingController();
    final _descriptionFieldController = useTextEditingController();
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

          Container(
            child: Column(
              children: [
                Image.network("https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")
              ],

            ),
            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),


          ),
          Container(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("写真を撮影"),
                ),
                ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("画像をライブラリから選択"),
                ),
              ],
            ),
            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),

          ),
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