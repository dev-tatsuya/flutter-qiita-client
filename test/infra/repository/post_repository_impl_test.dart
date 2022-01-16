import 'package:flutter_qiita_client/domain/repository/post_repository.dart';
import 'package:flutter_qiita_client/domain/service/api_service.dart';
import 'package:flutter_qiita_client/infra/repository/post_repository_impl.dart';
import 'package:flutter_qiita_client/infra/service/api/api_response.dart';
import 'package:flutter_qiita_client/infra/service/api/network_exceptions.dart';
import 'package:flutter_qiita_client/infra/service/api_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import '../../mock/mock.mocks.dart';
import '../../mock/model/qiita_post.dart';

void main() {
  late PostRepository target;
  late ApiService api;

  setUp(() {
    api = MockApiService();
    final container = ProviderContainer(overrides: [
      apiServiceProvider.overrideWithValue(api),
    ]);
    target = PostRepositoryImpl(container.read);
  });

  group('fetch', () {
    test('succeed', () async {
      when(api.getItems()).thenAnswer(
        (_) async => ApiSuccessResponse([mockQiitaPost]),
      );

      final res = await target.fetch();
      expect(res.length, 1);
      expect(res[0].id, 'id');
      expect(res[0].createdAt, DateTime(2022, 1, 15));
      expect(res[0].likesCount, 10);
      expect(res[0].tags[0].name, 'Flutter');
      expect(res[0].tags[1].name, 'Dart');
      expect(res[0].tags[2].name, 'Firebase');
      expect(res[0].title, 'Flutter Qiita Clientを作ってみた');
      expect(res[0].url, 'url');
      expect(res[0].user.id, 'qiita_id');
      expect(res[0].user.profileImageUrl, '');
    });

    test('failed when unauthorised error', () async {
      when(api.getItems()).thenAnswer(
          (_) async => const ApiFailureResponse(UnauthorisedRequest()));

      expect(target.fetch(), throwsA(isA<UnauthorisedRequest>()));
    });

    test('failed when other', () async {
      when(api.getItems()).thenAnswer((_) async => const ApiEmptyResponse());

      expect(target.fetch(), throwsA(isA<UnexpectedError>()));
    });
  });
}
