import 'package:flutter_qiita_client/domain/repository/post_repository.dart';
import 'package:flutter_qiita_client/domain/service/api_service.dart';
import 'package:flutter_qiita_client/infra/repository/post_repository_impl.dart';
import 'package:flutter_qiita_client/infra/service/api/api_response.dart';
import 'package:flutter_qiita_client/infra/service/api/data_model/response/qiita_post_response.dart';
import 'package:flutter_qiita_client/infra/service/api/data_model/tag_json.dart';
import 'package:flutter_qiita_client/infra/service/api/data_model/user_json.dart';
import 'package:flutter_qiita_client/infra/service/api/network_exceptions.dart';
import 'package:flutter_qiita_client/infra/service/api_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import '../../mock/mock.mocks.dart';

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
        (_) async => const ApiSuccessResponse([
          QiitaPostResponse(
            id: 'post_id',
            createdAt: '2022-01-14T21:36:55+09:00',
            likesCount: 2,
            tags: [TagJson(name: 'tag', versions: [])],
            title: 'タイトル',
            url: 'url',
            user: UserJson(
              id: 'qiita_id',
              profileImageUrl: 'profile_image_url',
            ),
          )
        ]),
      );

      final res = await target.fetch();
      expect(res.length, 1);
      expect(res[0].id, 'post_id');
      expect(res[0].createdAt, DateTime(2022, 1, 14, 21, 36, 55).toUtc());
      expect(res[0].likesCount, 2);
      expect(res[0].tags[0].name, 'tag');
      expect(res[0].title, 'タイトル');
      expect(res[0].url, 'url');
      expect(res[0].user.id, 'qiita_id');
      expect(res[0].user.profileImageUrl, 'profile_image_url');
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
