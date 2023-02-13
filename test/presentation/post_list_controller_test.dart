import 'package:flutter_qiita_client/domain/repository/post_repository.dart';
import 'package:flutter_qiita_client/infra/repository/post_repository_impl.dart';
import 'package:flutter_qiita_client/infra/service/api/network_exceptions.dart';
import 'package:flutter_qiita_client/presentation/common/state/page_state.dart';
import 'package:flutter_qiita_client/presentation/post/post_list_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import '../mock/mock.mocks.dart';
import '../mock/model/qiita_post.dart';

void main() {
  late PostListController target;
  late PostRepository postRepository;

  setUp(() {
    postRepository = MockPostRepository();

    final container = ProviderContainer(overrides: [
      postRepositoryProvider.overrideWithValue(postRepository),
    ]);

    when(postRepository.fetch(
      page: 1,
      perPage: PostListController.perPage,
    )).thenAnswer((_) async => []);

    target = PostListController(container.read);
  });

  group('fetch', () {
    test('succeed when page state is success', () async {
      when(postRepository.fetch(
        page: 1,
        perPage: PostListController.perPage,
      )).thenAnswer((_) async => mockQiitaPosts);

      final future = target.fetch(showDialog: true);
      expect(target.debugState.posts, isEmpty);
      expect(target.debugState.pageState, const PageStateLoading());
      await future;
      expect(target.debugState.posts, mockQiitaPosts);
      expect(target.debugState.pageState, const PageStateSuccess());
    });

    test('succeed when page status is empty', () async {
      final future = target.fetch(showDialog: true);
      expect(target.debugState.posts, isEmpty);
      expect(target.debugState.pageState, const PageStateLoading());
      await future;
      expect(target.debugState.posts, isEmpty);
      expect(target.debugState.pageState, const PageStateSuccess());
    });

    test('failed', () async {
      when(postRepository.fetch(
        page: 1,
        perPage: PostListController.perPage,
      )).thenThrow(const InternalServerError());

      await target.fetch();
      expect(target.debugState.pageState,
          const PageStateError(InternalServerError()));
    });
  });

  test('refresh', () async {
    verify(target.fetch()).called(1);
    target.refresh();
    expect(target.debugState.page, 1);
  });

  test('loadMore', () async {
    expect(target.debugState.page, 1);
    when(postRepository.fetch(
      page: 2,
      perPage: PostListController.perPage,
    )).thenAnswer((_) async => []);

    verify(await target.fetch(loadMore: true)).called(1);
    target.loadMore();
    expect(target.debugState.page, 2);
  });

  test('setQuery', () async {
    const keyword = 'test';
    when(postRepository.fetch(
      page: 1,
      perPage: PostListController.perPage,
      query: keyword,
    )).thenAnswer((_) async => []);
    expect(target.debugState.query, isNull);

    target.setQuery(keyword);
    expect(target.debugState.query, keyword);
    verify(await target.fetch()).called(1);

    target.setQuery(keyword);
    expect(target.debugState.query, keyword);
    verifyNever(await target.fetch());
  });

  test('setPage', () async {
    expect(target.debugState.page, 1);
    target.setPage(2);
    expect(target.debugState.page, 2);
  });
}
