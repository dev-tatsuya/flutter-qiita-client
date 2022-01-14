import 'package:flutter_qiita_client/domain/model/qiita_user.dart';
import 'package:flutter_qiita_client/domain/model/tag.dart';

class QiitaPost {
  QiitaPost(
    this.id,
    this.createdAt,
    this.likesCount,
    this.tags,
    this.title,
    this.url,
    this.user,
  );

  final String id;
  final DateTime createdAt;
  final int likesCount;
  final List<Tag> tags;
  final String title;
  final String url;
  final QiitaUser user;
}
