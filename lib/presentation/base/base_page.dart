import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/post/connected_post_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final postListScrollControllerProvider = Provider((ref) => ScrollController());

class BasePage extends ConsumerWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(postListScrollControllerProvider);

    return Scaffold(
      body: const ConnectedPostListPage(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
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
        onTap: (index) {
          if (controller.hasClients) {
            controller.animateTo(
              0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
        },
      ),
    );
  }
}
