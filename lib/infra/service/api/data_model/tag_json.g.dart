// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagJson _$$_TagJsonFromJson(Map<String, dynamic> json) => _$_TagJson(
      name: json['name'] as String,
      versions:
          (json['versions'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_TagJsonToJson(_$_TagJson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'versions': instance.versions,
    };
