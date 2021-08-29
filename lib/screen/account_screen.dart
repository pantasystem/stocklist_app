

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../main.dart';

class AccountScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final accountStore = useProvider(accountStoreProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text('アカウント情報')),
      body: ListView(children: [
        TextButton(onPressed: (){
          accountStore.logout();
          Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
        }, child: Text('ログアウト'))
      ]),
    );
  }
}