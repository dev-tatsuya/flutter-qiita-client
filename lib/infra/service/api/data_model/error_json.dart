import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_json.freezed.dart';
part 'error_json.g.dart';

@freezed
class ErrorJson with _$ErrorJson {
  const factory ErrorJson({
    required String message,
    required String type,
  }) = _ErrorJson;
  const ErrorJson._();

  factory ErrorJson.fromJson(Map<String, dynamic> json) =>
      _$ErrorJsonFromJson(json);
  Object toEntity() => Object();
}
