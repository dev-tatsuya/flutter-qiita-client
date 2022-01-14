// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorJson _$ErrorJsonFromJson(Map<String, dynamic> json) {
  return _ErrorJson.fromJson(json);
}

/// @nodoc
class _$ErrorJsonTearOff {
  const _$ErrorJsonTearOff();

  _ErrorJson call({required String message, required String type}) {
    return _ErrorJson(
      message: message,
      type: type,
    );
  }

  ErrorJson fromJson(Map<String, Object?> json) {
    return ErrorJson.fromJson(json);
  }
}

/// @nodoc
const $ErrorJson = _$ErrorJsonTearOff();

/// @nodoc
mixin _$ErrorJson {
  String get message => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorJsonCopyWith<ErrorJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorJsonCopyWith<$Res> {
  factory $ErrorJsonCopyWith(ErrorJson value, $Res Function(ErrorJson) then) =
      _$ErrorJsonCopyWithImpl<$Res>;
  $Res call({String message, String type});
}

/// @nodoc
class _$ErrorJsonCopyWithImpl<$Res> implements $ErrorJsonCopyWith<$Res> {
  _$ErrorJsonCopyWithImpl(this._value, this._then);

  final ErrorJson _value;
  // ignore: unused_field
  final $Res Function(ErrorJson) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorJsonCopyWith<$Res> implements $ErrorJsonCopyWith<$Res> {
  factory _$ErrorJsonCopyWith(
          _ErrorJson value, $Res Function(_ErrorJson) then) =
      __$ErrorJsonCopyWithImpl<$Res>;
  @override
  $Res call({String message, String type});
}

/// @nodoc
class __$ErrorJsonCopyWithImpl<$Res> extends _$ErrorJsonCopyWithImpl<$Res>
    implements _$ErrorJsonCopyWith<$Res> {
  __$ErrorJsonCopyWithImpl(_ErrorJson _value, $Res Function(_ErrorJson) _then)
      : super(_value, (v) => _then(v as _ErrorJson));

  @override
  _ErrorJson get _value => super._value as _ErrorJson;

  @override
  $Res call({
    Object? message = freezed,
    Object? type = freezed,
  }) {
    return _then(_ErrorJson(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorJson extends _ErrorJson {
  const _$_ErrorJson({required this.message, required this.type}) : super._();

  factory _$_ErrorJson.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorJsonFromJson(json);

  @override
  final String message;
  @override
  final String type;

  @override
  String toString() {
    return 'ErrorJson(message: $message, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorJson &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$ErrorJsonCopyWith<_ErrorJson> get copyWith =>
      __$ErrorJsonCopyWithImpl<_ErrorJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorJsonToJson(this);
  }
}

abstract class _ErrorJson extends ErrorJson {
  const factory _ErrorJson({required String message, required String type}) =
      _$_ErrorJson;
  const _ErrorJson._() : super._();

  factory _ErrorJson.fromJson(Map<String, dynamic> json) =
      _$_ErrorJson.fromJson;

  @override
  String get message;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$ErrorJsonCopyWith<_ErrorJson> get copyWith =>
      throw _privateConstructorUsedError;
}
