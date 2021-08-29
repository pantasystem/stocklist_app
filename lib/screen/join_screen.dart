import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';

import '../main.dart';

class JoinScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final token = useTextEditingController();
    final email = useTextEditingController();
    final name = useTextEditingController();
    final password = useTextEditingController();
    final validationErrors = useState<ValidationException?>(null);

    final accountStore = useProvider(accountStoreProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('家に参加する')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            controller: token,
            decoration: InputDecoration(
              hintText: '招待コード',
              labelText: '招待コード',
            )
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil('/register', (route) => false);
            },
            child: Text('招待コードを持っていません(新規登録)')
          ),
          TextField(
            controller: email,
            decoration: InputDecoration(
                hintText: 'メールアドレス',
                labelText: 'メールアドレス',
                errorText: validationErrors.value?.safeGetErrorMessage('email')
            ),
          ),
          SizedBox(height: 8),
          TextField(
            controller: name,
            decoration: InputDecoration(
              hintText: '名前',
              labelText: '他のメンバーに表示されます',
              errorText: validationErrors.value?.safeGetErrorMessage('name')
            )
          ),
          SizedBox(height: 8),
          TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: 'パスワード',
                  labelText: 'パスワード',
                  errorText: validationErrors.value?.safeGetErrorMessage('password')
              )
          ),
          SizedBox(height: 8),
          TextButton(onPressed: (){
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
          }, child: Text('すでに登録しています')),
          SizedBox(height: 8),
          ElevatedButton(
              onPressed: (){
                accountStore.login(email: email.value.text, password: password.value.text).then((value){
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                }).onError((error, stackTrace){
                  if(error is ValidationException) {
                    validationErrors.value = error;
                  }else{
                    print(stackTrace);
                    print(error);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('ログインエラー')));
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