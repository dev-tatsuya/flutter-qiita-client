import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_qiita_client/domain/service/api_service.dart';
import 'package:flutter_qiita_client/infra/service/api/api_response.dart';
import 'package:flutter_qiita_client/infra/service/api/api_response_factory.dart';
import 'package:flutter_qiita_client/infra/service/api/data_model/response/qiita_post_response.dart';
import 'package:flutter_qiita_client/infra/service/api/qiita_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiServiceProvider = Provider((ref) => ApiServiceImpl(ref.read));

class ApiServiceImpl implements ApiService {
  ApiServiceImpl(this._read);

  final Reader _read;
  QiitaApi get _api => _read(qiitaApiProvider);
  ApiResponseFactory get _factory => _read(apiResponseFactoryProvider);

  @override
  Future<ApiResponse<List<QiitaPostResponse>>> getItems({
    int? page,
    int? perPage,
    String? query,
  }) async {
    return _factory.apiCall(_api.getItems(
      header: _bearerToken,
      page: page,
      perPage: perPage,
      query: query,
    ));
  }

  final _bearerToken = 'Bearer ${dotenv.env['access_token']}';
}
