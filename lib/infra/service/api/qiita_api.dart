import 'package:dio/dio.dart';
import 'package:flutter_qiita_client/infra/service/api/data_model/response/qiita_post_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'qiita_api.g.dart';

final qiitaApiProvider = Provider<QiitaApi>((ref) {
  const host = 'https://qiita.com';
  const port = '';
  const basePath = '/api';
  const version = '/v2';

  const baseUrl = '$host$port$basePath$version';

  return QiitaApi(
    Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
    )),
    baseUrl: baseUrl,
  );
});

@RestApi()
abstract class QiitaApi {
  factory QiitaApi(Dio dio, {String baseUrl}) = _QiitaApi;

  @GET('/items')
  @Header('Content-Type: application/json')
  Future<HttpResponse<List<QiitaPostResponse>>> getItems({
    @Header('Authorization') required String header,
    @Query('page') int? page,
    @Query('per_page') int? perPage,
    @Query('query') String? query,
  });
}
