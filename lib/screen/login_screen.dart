import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/api/StocklistClient.dart';
import 'package:stocklist_app/main.dart';

class LoginScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final email = useTextEditingController();
    final password = useTextEditingController();
    final validationErrors = useState<ValidationException?>(null);

    final accountStore = useProvider(accountStoreProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'メールアドレス',
              labelText: 'メールアドレス',
              errorText: validationErrors.value?.safeGetErrorMessage('email')
            ),
          ),
          SizedBox(height: 16,),
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
            Navigator.of(context).pushNamedAndRemoveUntil('/register', (route) => false);
          }, child: Text('登録')),
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
            child: Text('ログイン')
          )
        ],
      ),
    );
  }
}