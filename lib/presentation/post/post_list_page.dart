import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/base/base_page.dart';
import 'package:flutter_qiita_client/presentation/common/widget/last_indicator.dart';
import 'package:flutter_qiita_client/presentation/common/widget/search_bar.dart';
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
      backgroundColor: const Color(0xfff8f8f8),
      appBar: AppBar(
        title: const Text(
          'Flutter Qiita Client',
          style: TextStyle(fontFamily: 'Inter'),
        ),
        centerTitle: true,
        elevation: 1,
        toolbarHeight: 44,
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
    final controller = ref.read(postListControllerProvider.notifier);

    return PrimaryScrollController(
      controller: ref.watch(postListScrollControllerProvider),
      child: Scrollbar(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              floating: true,
              elevation: 0.5,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(4),
                child: SearchBar(),
              ),
            ),
            CupertinoSliverRefreshControl(
              onRefresh: () async => controller.refresh(),
            ),
            if (posts.isEmpty)
              const SliverFillRemaining(
                child: Center(child: Text('Not Found')),
              ),
            if (posts.isNotEmpty)
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == posts.length && state.hasNext) {
                        return LastIndicator(controller.loadMore);
                      }

                      return PostContent(posts[index]);
                    },
                    childCount: posts.length + (state.hasNext ? 1 : 0),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
