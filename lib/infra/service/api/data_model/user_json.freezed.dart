// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserJson _$UserJsonFromJson(Map<String, dynamic> json) {
  return _UserJson.fromJson(json);
}

/// @nodoc
class _$UserJsonTearOff {
  const _$UserJsonTearOff();

  _UserJson call(
      {required String id,
      @JsonKey(name: 'profile_image_url') required String profileImageUrl}) {
    return _UserJson(
      id: id,
      profileImageUrl: profileImageUrl,
    );
  }

  UserJson fromJson(Map<String, Object?> json) {
    return UserJson.fromJson(json);
  }
}

/// @nodoc
const $UserJson = _$UserJsonTearOff();

/// @nodoc
mixin _$UserJson {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserJsonCopyWith<UserJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserJsonCopyWith<$Res> {
  factory $UserJsonCopyWith(UserJson value, $Res Function(UserJson) then) =
      _$UserJsonCopyWithImpl<$Res>;
  $Res call(
      {String id, @JsonKey(name: 'profile_image_url') String profileImageUrl});
}

/// @nodoc
class _$UserJsonCopyWithImpl<$Res> implements $UserJsonCopyWith<$Res> {
  _$UserJsonCopyWithImpl(this._value, this._then);

  final UserJson _value;
  // ignore: unused_field
  final $Res Function(UserJson) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserJsonCopyWith<$Res> implements $UserJsonCopyWith<$Res> {
  factory _$UserJsonCopyWith(_UserJson value, $Res Function(_UserJson) then) =
      __$UserJsonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, @JsonKey(name: 'profile_image_url') String profileImageUrl});
}

/// @nodoc
class __$UserJsonCopyWithImpl<$Res> extends _$UserJsonCopyWithImpl<$Res>
    implements _$UserJsonCopyWith<$Res> {
  __$UserJsonCopyWithImpl(_UserJson _value, $Res Function(_UserJson) _then)
      : super(_value, (v) => _then(v as _UserJson));

  @override
  _UserJson get _value => super._value as _UserJson;

  @override
  $Res call({
    Object? id = freezed,
    Object? profileImageUrl = freezed,
  }) {
    return _then(_UserJson(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: profileImageUrl == freezed
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserJson extends _UserJson {
  const _$_UserJson(
      {required this.id,
      @JsonKey(name: 'profile_image_url') required this.profileImageUrl})
      : super._();

  factory _$_UserJson.fromJson(Map<String, dynamic> json) =>
      _$$_UserJsonFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'profile_image_url')
  final String profileImageUrl;

  @override
  String toString() {
    return 'UserJson(id: $id, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserJson &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.profileImageUrl, profileImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(profileImageUrl));

  @JsonKey(ignore: true)
  @override
  _$UserJsonCopyWith<_UserJson> get copyWith =>
      __$UserJsonCopyWithImpl<_UserJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserJsonToJson(this);
  }
}

abstract class _UserJson extends UserJson {
  const factory _UserJson(
      {required String id,
      @JsonKey(name: 'profile_image_url')
          required String profileImageUrl}) = _$_UserJson;
  const _UserJson._() : super._();

  factory _UserJson.fromJson(Map<String, dynamic> json) = _$_UserJson.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$UserJsonCopyWith<_UserJson> get copyWith =>
      throw _privateConstructorUsedError;
}
