import 'package:flutter_qiita_client/infra/service/api/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(T data) = ApiSuccessResponse<T>;
  const factory ApiResponse.failure(NetworkExceptions error) =
      ApiFailureResponse<T>;
  const factory ApiResponse.empty() = ApiEmptyResponse<T>;
}
