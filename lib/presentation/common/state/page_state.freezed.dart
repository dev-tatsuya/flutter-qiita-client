// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageStateTearOff {
  const _$PageStateTearOff();

  PageStateSuccess success() {
    return const PageStateSuccess();
  }

  PageStateLoading loading() {
    return const PageStateLoading();
  }

  PageStateError error(NetworkExceptions ex) {
    return PageStateError(
      ex,
    );
  }
}

/// @nodoc
const $PageState = _$PageStateTearOff();

/// @nodoc
mixin _$PageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions ex) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res> implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  final PageState _value;
  // ignore: unused_field
  final $Res Function(PageState) _then;
}

/// @nodoc
abstract class $PageStateSuccessCopyWith<$Res> {
  factory $PageStateSuccessCopyWith(
          PageStateSuccess value, $Res Function(PageStateSuccess) then) =
      _$PageStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageStateSuccessCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateSuccessCopyWith<$Res> {
  _$PageStateSuccessCopyWithImpl(
      PageStateSuccess _value, $Res Function(PageStateSuccess) _then)
      : super(_value, (v) => _then(v as PageStateSuccess));

  @override
  PageStateSuccess get _value => super._value as PageStateSuccess;
}

/// @nodoc

class _$PageStateSuccess implements PageStateSuccess {
  const _$PageStateSuccess();

  @override
  String toString() {
    return 'PageState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions ex) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PageStateSuccess implements PageState {
  const factory PageStateSuccess() = _$PageStateSuccess;
}

/// @nodoc
abstract class $PageStateLoadingCopyWith<$Res> {
  factory $PageStateLoadingCopyWith(
          PageStateLoading value, $Res Function(PageStateLoading) then) =
      _$PageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PageStateLoadingCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateLoadingCopyWith<$Res> {
  _$PageStateLoadingCopyWithImpl(
      PageStateLoading _value, $Res Function(PageStateLoading) _then)
      : super(_value, (v) => _then(v as PageStateLoading));

  @override
  PageStateLoading get _value => super._value as PageStateLoading;
}

/// @nodoc

class _$PageStateLoading implements PageStateLoading {
  const _$PageStateLoading();

  @override
  String toString() {
    return 'PageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions ex) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PageStateLoading implements PageState {
  const factory PageStateLoading() = _$PageStateLoading;
}

/// @nodoc
abstract class $PageStateErrorCopyWith<$Res> {
  factory $PageStateErrorCopyWith(
          PageStateError value, $Res Function(PageStateError) then) =
      _$PageStateErrorCopyWithImpl<$Res>;
  $Res call({NetworkExceptions ex});

  $NetworkExceptionsCopyWith<$Res> get ex;
}

/// @nodoc
class _$PageStateErrorCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements $PageStateErrorCopyWith<$Res> {
  _$PageStateErrorCopyWithImpl(
      PageStateError _value, $Res Function(PageStateError) _then)
      : super(_value, (v) => _then(v as PageStateError));

  @override
  PageStateError get _value => super._value as PageStateError;

  @override
  $Res call({
    Object? ex = freezed,
  }) {
    return _then(PageStateError(
      ex == freezed
          ? _value.ex
          : ex // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get ex {
    return $NetworkExceptionsCopyWith<$Res>(_value.ex, (value) {
      return _then(_value.copyWith(ex: value));
    });
  }
}

/// @nodoc

class _$PageStateError implements PageStateError {
  const _$PageStateError(this.ex);

  @override
  final NetworkExceptions ex;

  @override
  String toString() {
    return 'PageState.error(ex: $ex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageStateError &&
            const DeepCollectionEquality().equals(other.ex, ex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ex));

  @JsonKey(ignore: true)
  @override
  $PageStateErrorCopyWith<PageStateError> get copyWith =>
      _$PageStateErrorCopyWithImpl<PageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions ex) error,
  }) {
    return error(ex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
  }) {
    return error?.call(ex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(NetworkExceptions ex)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(ex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateSuccess value) success,
    required TResult Function(PageStateLoading value) loading,
    required TResult Function(PageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateSuccess value)? success,
    TResult Function(PageStateLoading value)? loading,
    TResult Function(PageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PageStateError implements PageState {
  const factory PageStateError(NetworkExceptions ex) = _$PageStateError;

  NetworkExceptions get ex;
  @JsonKey(ignore: true)
  $PageStateErrorCopyWith<PageStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
