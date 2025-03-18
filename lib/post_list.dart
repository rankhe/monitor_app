import 'package:flutter/material.dart';
import 'account_list.dart';  // 导入 account_list.dart 文件

class PostList extends StatelessWidget {
  final AccountModel account;

  const PostList({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${account.name} 的博文'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('博文标题 $index'),
            subtitle: Text('博文内容 $index'),
            leading: Icon(Icons.article),
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            onTap: () {
              // 查看博文详情逻辑
            },
          );
        },
      ),
    );
  }
}