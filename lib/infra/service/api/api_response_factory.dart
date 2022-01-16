import 'package:dio/dio.dart';
import 'package:flutter_qiita_client/infra/service/api/api_response.dart';
import 'package:flutter_qiita_client/infra/service/api/data_model/error_json.dart';
import 'package:flutter_qiita_client/infra/service/api/network_exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

final apiResponseFactoryProvider =
    Provider<ApiResponseFactory>((ref) => ApiResponseFactory());

class ApiResponseFactory {
  Future<ApiResponse<S>> apiCall<T, S>({
    required Future<HttpResponse<T>> api,
    required S Function(T) builder,
  }) async {
    try {
      final apiRes = await api;
      final res = apiRes.response;
      if (_isSuccessful(res.statusCode)) {
        return ApiSuccessResponse(builder(apiRes.data));
      }

      return handleExpectedException(res);
    } on NetworkExceptions catch (error) {
      return ApiFailureResponse(NetworkExceptions.getDioException(error));
    } on DioError catch (error, stackTrace) {
      return _handleDioError(error, stackTrace);
    } on Exception catch (error) {
      return ApiFailureResponse(UnexpectedError(reason: error.toString()));
    }
  }

  Future<ApiResponse<T>> apiCallVoid<T>(Future<HttpResponse<void>> api) async {
    try {
      final res = (await api).response;
      if (_isSuccessful(res.statusCode)) {
        return const ApiEmptyResponse();
      }

      return handleExpectedException(res);
    } on NetworkExceptions catch (error) {
      return ApiFailureResponse(NetworkExceptions.getDioException(error));
    } on DioError catch (error, stackTrace) {
      return _handleDioError(error, stackTrace);
    } on Exception catch (error) {
      return ApiFailureResponse(UnexpectedError(reason: error.toString()));
    }
  }

  ApiResponse<T> _handleDioError<T>(DioError error, StackTrace stackTrace) {
    if (error.response?.data is Map<String, dynamic>) {
      final data = error.response?.data as Map<String, dynamic>;
      final errorJson = ErrorJson.fromJson(data);
      return ApiFailureResponse(
          NetworkExceptions.getDioException(error, message: errorJson.message));
    }

    return ApiFailureResponse(NetworkExceptions.getDioException(error));
  }

  Future<ApiResponse<T>> handleExpectedException<T>(
      Response<dynamic> res) async {
    switch (res.statusCode) {
      case 400:
        return const ApiFailureResponse(BadRequest());
      case 401:
        return const ApiFailureResponse(UnauthorisedRequest());
      case 403:
        return const ApiFailureResponse(Forbidden());
      case 404:
        return const ApiFailureResponse(NotFound());
      case 500:
        return const ApiFailureResponse(InternalServerError());
      default:
        return const ApiFailureResponse(UnexpectedError());
    }
  }

  bool _isSuccessful(int? code) {
    if (code == null) {
      return false;
    }

    return successfulStatuses.contains(code);
  }

  final successfulStatuses = [200, 201, 204];
}
