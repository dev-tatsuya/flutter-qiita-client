import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiita_client/presentation/base/base_page.dart';
import 'package:flutter_qiita_client/presentation/common/widget/last_indicator.dart';
import 'package:flutter_qiita_client/presentation/common/widget/search_bar.dart';
import 'package:flutter_qiita_client/presentation/post/post_list_notifier.dart';
import 'package:flutter_qiita_client/presentation/post/state/post_list_state.dart';
import 'package:flutter_qiita_client/presentation/post/widget/post_content.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostListPage extends ConsumerWidget {
  const PostListPage(this.state, {Key? key}) : super(key: key);

  final PostListState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = state.posts;
    final controller = ref.read(postListNotifierProvider.notifier);

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
                child: ListSearchBar(),
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
