import 'package:flutter_qiita_client/domain/model/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_json.freezed.dart';
part 'tag_json.g.dart';

@freezed
class TagJson with _$TagJson {
  const factory TagJson({
    required String name,
    required List<String> versions,
  }) = _TagJson;
  const TagJson._();

  factory TagJson.fromJson(Map<String, dynamic> json) =>
      _$TagJsonFromJson(json);

  Tag toEntity() => Tag(name, versions: versions);
}
