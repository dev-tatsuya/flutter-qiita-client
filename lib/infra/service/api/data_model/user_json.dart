import 'package:flutter_qiita_client/domain/model/qiita_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_json.freezed.dart';
part 'user_json.g.dart';

@freezed
class UserJson with _$UserJson {
  const factory UserJson({
    required String id,
    @JsonKey(name: 'profile_image_url') required String profileImageUrl,
  }) = _UserJson;
  const UserJson._();

  factory UserJson.fromJson(Map<String, dynamic> json) =>
      _$UserJsonFromJson(json);

  QiitaUser toEntity() => QiitaUser(id, profileImageUrl);
}
