import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/post/post_list_page.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ConnectedPostListPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: '記事一覧',
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            label: 'アカウント',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
