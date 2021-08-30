
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stocklist_app/entity/user.dart';
import 'package:stocklist_app/main.dart';
import 'package:stocklist_app/screen/shopping_list_detail_screen.dart';

class MemberScreen extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final homeStore = useProvider(homeStoreProvider.notifier);
    final List<User> members = useProvider(homeStoreProvider).home?.members ?? [];
    useEffect((){
      Future.microtask(()=>homeStore.fetch());
    }, []);
    return Scaffold(
      appBar: AppBar(title: Text('メンバー一覧')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          showDialog(context: context, builder: (context)=>InvitationCodeDialog());
        },
        label: Text('招待'),
        icon: Icon(Icons.add)
      ),
      body: () {
        if(members.isEmpty) {
          return Container(child: CircleProgress());
        }
        return ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, pos) {
            return ListTile(title: Text(members[pos].name));
          });
      }.call()
    );
  }
}

class InvitationCodeDialog extends HookWidget {
  @override
  Widget build(BuildContext context) {

    return FutureBuilder<String?>(
      initialData: null,
      future: stocklistClient.invitationAPI.invite(),
      builder: (context, snapshot){

        return AlertDialog(
          title: Text('招待コード'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text('招待コードは招待したい人だけに送信してください'),
                if(snapshot.hasData)
                  TextField(controller: TextEditingController.fromValue(TextEditingValue(text: snapshot.data ?? '')),)
                else if(snapshot.hasError)
                  Text('招待コードの作成に失敗しました')
                else
                  CircleProgress()
              ],
            ),
          ),
        );
      }
    );

  }
}