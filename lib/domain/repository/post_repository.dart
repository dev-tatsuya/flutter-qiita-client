import 'package:flutter_qiita_client/domain/model/qiita_post.dart';

abstract class PostRepository {
  Future<List<QiitaPost>> fetch({
    int? page,
    int? perPage,
    String? query,
  });
}
