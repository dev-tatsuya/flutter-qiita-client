// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QiitaPostResponse _$$_QiitaPostResponseFromJson(Map<String, dynamic> json) =>
    _$_QiitaPostResponse(
      id: json['id'] as String,
      createdAt: json['created_at'] as String,
      likesCount: json['likes_count'] as int,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagJson.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      url: json['url'] as String,
      user: UserJson.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QiitaPostResponseToJson(
        _$_QiitaPostResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'likes_count': instance.likesCount,
      'tags': instance.tags,
      'title': instance.title,
      'url': instance.url,
      'user': instance.user,
    };
