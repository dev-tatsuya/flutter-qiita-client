import 'package:flutter_qiita_client/domain/model/qiita_post.dart';
import 'package:flutter_qiita_client/domain/model/qiita_user.dart';
import 'package:flutter_qiita_client/domain/model/tag.dart';

final mockQiitaPost = QiitaPost(
  'id',
  DateTime(2022, 1, 15),
  10,
  [Tag('Flutter'), Tag('Dart'), Tag('Firebase')],
  'Flutter Qiita Clientを作ってみた',
  'url',
  QiitaUser('qiita_id', ''),
);

final mockQiitaPosts = [
  QiitaPost(
    'id',
    DateTime(2023, 1, 15),
    10,
    [Tag('Flutter'), Tag('Dart'), Tag('Firebase')],
    'Flutter Qiita Clientを作ってみたよ！',
    'url',
    QiitaUser('qiita_id', ''),
  ),
  QiitaPost(
    'id',
    DateTime(2023, 1, 14),
    8,
    [Tag('React'), Tag('Typescript'), Tag('Firebase')],
    'React Qiita Clientを作ってみた',
    'url',
    QiitaUser('qiita_id', ''),
  ),
  QiitaPost(
    'id',
    DateTime(2023, 1, 13),
    6,
    [Tag('PM'), Tag('アジャイル'), Tag('スクラム')],
    'PMはじめました',
    'url',
    QiitaUser('qiita_id', ''),
  )
];
