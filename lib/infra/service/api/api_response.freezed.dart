// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiResponseTearOff {
  const _$ApiResponseTearOff();

  ApiSuccessResponse<T> success<T>(T data) {
    return ApiSuccessResponse<T>(
      data,
    );
  }

  ApiFailureResponse<T> failure<T>(NetworkExceptions error) {
    return ApiFailureResponse<T>(
      error,
    );
  }

  ApiEmptyResponse<T> empty<T>() {
    return ApiEmptyResponse<T>();
  }
}

/// @nodoc
const $ApiResponse = _$ApiResponseTearOff();

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(ApiFailureResponse<T> value) failure,
    required TResult Function(ApiEmptyResponse<T> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse<T> _value;
  // ignore: unused_field
  final $Res Function(ApiResponse<T>) _then;
}

/// @nodoc
abstract class $ApiSuccessResponseCopyWith<T, $Res> {
  factory $ApiSuccessResponseCopyWith(ApiSuccessResponse<T> value,
          $Res Function(ApiSuccessResponse<T>) then) =
      _$ApiSuccessResponseCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$ApiSuccessResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiSuccessResponseCopyWith<T, $Res> {
  _$ApiSuccessResponseCopyWithImpl(
      ApiSuccessResponse<T> _value, $Res Function(ApiSuccessResponse<T>) _then)
      : super(_value, (v) => _then(v as ApiSuccessResponse<T>));

  @override
  ApiSuccessResponse<T> get _value => super._value as ApiSuccessResponse<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ApiSuccessResponse<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ApiSuccessResponse<T> implements ApiSuccessResponse<T> {
  const _$ApiSuccessResponse(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResponse<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiSuccessResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ApiSuccessResponseCopyWith<T, ApiSuccessResponse<T>> get copyWith =>
      _$ApiSuccessResponseCopyWithImpl<T, ApiSuccessResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function() empty,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(ApiFailureResponse<T> value) failure,
    required TResult Function(ApiEmptyResponse<T> value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ApiSuccessResponse<T> implements ApiResponse<T> {
  const factory ApiSuccessResponse(T data) = _$ApiSuccessResponse<T>;

  T get data;
  @JsonKey(ignore: true)
  $ApiSuccessResponseCopyWith<T, ApiSuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureResponseCopyWith<T, $Res> {
  factory $ApiFailureResponseCopyWith(ApiFailureResponse<T> value,
          $Res Function(ApiFailureResponse<T>) then) =
      _$ApiFailureResponseCopyWithImpl<T, $Res>;
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class _$ApiFailureResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiFailureResponseCopyWith<T, $Res> {
  _$ApiFailureResponseCopyWithImpl(
      ApiFailureResponse<T> _value, $Res Function(ApiFailureResponse<T>) _then)
      : super(_value, (v) => _then(v as ApiFailureResponse<T>));

  @override
  ApiFailureResponse<T> get _value => super._value as ApiFailureResponse<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ApiFailureResponse<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ApiFailureResponse<T> implements ApiFailureResponse<T> {
  const _$ApiFailureResponse(this.error);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'ApiResponse<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiFailureResponse<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ApiFailureResponseCopyWith<T, ApiFailureResponse<T>> get copyWith =>
      _$ApiFailureResponseCopyWithImpl<T, ApiFailureResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function() empty,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(ApiFailureResponse<T> value) failure,
    required TResult Function(ApiEmptyResponse<T> value) empty,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ApiFailureResponse<T> implements ApiResponse<T> {
  const factory ApiFailureResponse(NetworkExceptions error) =
      _$ApiFailureResponse<T>;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  $ApiFailureResponseCopyWith<T, ApiFailureResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEmptyResponseCopyWith<T, $Res> {
  factory $ApiEmptyResponseCopyWith(
          ApiEmptyResponse<T> value, $Res Function(ApiEmptyResponse<T>) then) =
      _$ApiEmptyResponseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ApiEmptyResponseCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res>
    implements $ApiEmptyResponseCopyWith<T, $Res> {
  _$ApiEmptyResponseCopyWithImpl(
      ApiEmptyResponse<T> _value, $Res Function(ApiEmptyResponse<T>) _then)
      : super(_value, (v) => _then(v as ApiEmptyResponse<T>));

  @override
  ApiEmptyResponse<T> get _value => super._value as ApiEmptyResponse<T>;
}

/// @nodoc

class _$ApiEmptyResponse<T> implements ApiEmptyResponse<T> {
  const _$ApiEmptyResponse();

  @override
  String toString() {
    return 'ApiResponse<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApiEmptyResponse<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiSuccessResponse<T> value) success,
    required TResult Function(ApiFailureResponse<T> value) failure,
    required TResult Function(ApiEmptyResponse<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiSuccessResponse<T> value)? success,
    TResult Function(ApiFailureResponse<T> value)? failure,
    TResult Function(ApiEmptyResponse<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ApiEmptyResponse<T> implements ApiResponse<T> {
  const factory ApiEmptyResponse() = _$ApiEmptyResponse<T>;
}
