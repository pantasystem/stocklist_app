import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/main.dart';

class RegisterScreen extends HookWidget {

  Widget build(BuildContext context) {

    final accountStore = useProvider(accountStoreProvider.notifier);
    final email = useTextEditingController();
    final password = useTextEditingController();
    final userName = useTextEditingController();
    final homeName = useTextEditingController();

    final validationErrors = useState<ValidationException?>(null);

    return Scaffold(
      appBar: AppBar(title: Text('登録')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            controller: homeName,
            decoration: InputDecoration(
              hintText: 'あなたが作成するグループの名称になります',
              labelText: 'お家の名前'
            ),
          ),
          SizedBox(height: 8,),
          TextField(
            controller: email,
            decoration: InputDecoration(
                hintText: 'ログイン時にしようします',
                labelText: 'メールアドレス'
            ),
          ),
          SizedBox(height:8,),
          TextField(
            controller: userName,
            decoration: InputDecoration(
                hintText: '他のメンバーに表示されます',
                labelText: 'ユーザー名'
            ),
          ),
          SizedBox(height: 8,),
          TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: 'パスワード',
                  labelText: 'パスワード'
              )
          ),
          SizedBox(height: 8),
          TextButton(onPressed: (){
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
          }, child: Text('すでに登録しています')),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: (){
              accountStore.register(
                email: email.value.text,
                userName: userName.value.text,
                homeName: homeName.value.text,
                password: password.value.text
              ).then((value){
                Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
              }).onError((error, stackTrace){
                if(error is ValidationException) {
                  validationErrors.value = error;
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('エラー')));
                }
              });
            },
            child: Text('登録')
          )
        ],
      ),
    );
  }
}