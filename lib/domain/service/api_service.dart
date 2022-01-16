import 'package:flutter_qiita_client/domain/model/qiita_post.dart';
import 'package:flutter_qiita_client/infra/service/api/api_response.dart';

abstract class ApiService {
  Future<ApiResponse<List<QiitaPost>>> getItems({
    int? page,
    int? perPage,
    String? query,
  });
}
