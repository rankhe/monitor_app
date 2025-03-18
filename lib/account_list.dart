import 'package:flutter/material.dart';
import 'post_list.dart';

class AccountList extends StatefulWidget {
  const AccountList({super.key});

  @override
  _AccountListState createState() => _AccountListState();
}

class _AccountListState extends State<AccountList> {
  List<AccountModel> accounts = [
    AccountModel(
      name: '账号1',
      platform: 'X',
      avatar: 'https://example.com/avatar1.png',
    ),
    AccountModel(
      name: '账号2',
      platform: '抖音',
      avatar: 'https://example.com/avatar2.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('监控账号'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // 添加账号逻辑
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(accounts[index].avatar),
            ),
            title: Text(accounts[index].name),
            subtitle: Text(accounts[index].platform),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // 删除账号逻辑
              },
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostList(account: accounts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AccountModel {
  String name;
  String platform;
  String avatar;

  AccountModel({required this.name, required this.platform, required this.avatar});
}