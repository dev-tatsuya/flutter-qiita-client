import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/base/base_page.dart';
import 'package:flutter_qiita_client/presentation/common/widget/last_indicator.dart';
import 'package:flutter_qiita_client/presentation/post/post_list_controller.dart';
import 'package:flutter_qiita_client/presentation/post/state/post_list_state.dart';
import 'package:flutter_qiita_client/presentation/post/widget/post_content.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConnectedPostListPage extends ConsumerWidget {
  const ConnectedPostListPage({Key? key}) : super(key: key);

  static Widget? _lastCachedChild;

  Widget _cacheWidget(Widget child) {
    _lastCachedChild = child;
    return child;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postListControllerProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Flutter Qiita Client'),
      ),
      body: state.pageState.when(
        success: () => _cacheWidget(PostListPage(state)),
        loading: () =>
            _lastCachedChild ??
            const Center(child: CupertinoActivityIndicator()),
        error: (error) => _cacheWidget(Center(child: Text(error.toString()))),
      ),
    );
  }
}

class PostListPage extends ConsumerWidget {
  const PostListPage(this.state, {Key? key}) : super(key: key);

  final PostListState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = state.posts;

    return PrimaryScrollController(
      controller: ref.watch(postListScrollControllerProvider),
      child: Scrollbar(
        child: ListView.builder(
          itemCount: posts.length + (state.hasNext ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == posts.length && state.hasNext) {
              return LastIndicator(
                  ref.read(postListControllerProvider.notifier).loadMore);
            }

            return PostContent(posts[index]);
          },
        ),
      ),
    );
  }
}
