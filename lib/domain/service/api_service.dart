import 'package:flutter_qiita_client/infra/service/api/api_response.dart';
import 'package:flutter_qiita_client/infra/service/api/data_model/response/qiita_post_response.dart';

abstract class ApiService {
  Future<ApiResponse<List<QiitaPostResponse>>> getItems({
    int? page,
    int? perPage,
    String? query,
  });
}
