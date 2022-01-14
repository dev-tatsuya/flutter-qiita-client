// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qiita_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QiitaPostResponse _$QiitaPostResponseFromJson(Map<String, dynamic> json) {
  return _QiitaPostResponse.fromJson(json);
}

/// @nodoc
class _$QiitaPostResponseTearOff {
  const _$QiitaPostResponseTearOff();

  _QiitaPostResponse call(
      {required String id,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'likes_count') required int likesCount,
      required List<TagJson> tags,
      required String title,
      required String url,
      required UserJson user}) {
    return _QiitaPostResponse(
      id: id,
      createdAt: createdAt,
      likesCount: likesCount,
      tags: tags,
      title: title,
      url: url,
      user: user,
    );
  }

  QiitaPostResponse fromJson(Map<String, Object?> json) {
    return QiitaPostResponse.fromJson(json);
  }
}

/// @nodoc
const $QiitaPostResponse = _$QiitaPostResponseTearOff();

/// @nodoc
mixin _$QiitaPostResponse {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes_count')
  int get likesCount => throw _privateConstructorUsedError;
  List<TagJson> get tags => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  UserJson get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QiitaPostResponseCopyWith<QiitaPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QiitaPostResponseCopyWith<$Res> {
  factory $QiitaPostResponseCopyWith(
          QiitaPostResponse value, $Res Function(QiitaPostResponse) then) =
      _$QiitaPostResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'likes_count') int likesCount,
      List<TagJson> tags,
      String title,
      String url,
      UserJson user});

  $UserJsonCopyWith<$Res> get user;
}

/// @nodoc
class _$QiitaPostResponseCopyWithImpl<$Res>
    implements $QiitaPostResponseCopyWith<$Res> {
  _$QiitaPostResponseCopyWithImpl(this._value, this._then);

  final QiitaPostResponse _value;
  // ignore: unused_field
  final $Res Function(QiitaPostResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? likesCount = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagJson>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserJson,
    ));
  }

  @override
  $UserJsonCopyWith<$Res> get user {
    return $UserJsonCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$QiitaPostResponseCopyWith<$Res>
    implements $QiitaPostResponseCopyWith<$Res> {
  factory _$QiitaPostResponseCopyWith(
          _QiitaPostResponse value, $Res Function(_QiitaPostResponse) then) =
      __$QiitaPostResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'likes_count') int likesCount,
      List<TagJson> tags,
      String title,
      String url,
      UserJson user});

  @override
  $UserJsonCopyWith<$Res> get user;
}

/// @nodoc
class __$QiitaPostResponseCopyWithImpl<$Res>
    extends _$QiitaPostResponseCopyWithImpl<$Res>
    implements _$QiitaPostResponseCopyWith<$Res> {
  __$QiitaPostResponseCopyWithImpl(
      _QiitaPostResponse _value, $Res Function(_QiitaPostResponse) _then)
      : super(_value, (v) => _then(v as _QiitaPostResponse));

  @override
  _QiitaPostResponse get _value => super._value as _QiitaPostResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? likesCount = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? user = freezed,
  }) {
    return _then(_QiitaPostResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagJson>,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserJson,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QiitaPostResponse extends _QiitaPostResponse {
  const _$_QiitaPostResponse(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'likes_count') required this.likesCount,
      required this.tags,
      required this.title,
      required this.url,
      required this.user})
      : super._();

  factory _$_QiitaPostResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QiitaPostResponseFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'likes_count')
  final int likesCount;
  @override
  final List<TagJson> tags;
  @override
  final String title;
  @override
  final String url;
  @override
  final UserJson user;

  @override
  String toString() {
    return 'QiitaPostResponse(id: $id, createdAt: $createdAt, likesCount: $likesCount, tags: $tags, title: $title, url: $url, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QiitaPostResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(likesCount),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$QiitaPostResponseCopyWith<_QiitaPostResponse> get copyWith =>
      __$QiitaPostResponseCopyWithImpl<_QiitaPostResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QiitaPostResponseToJson(this);
  }
}

abstract class _QiitaPostResponse extends QiitaPostResponse {
  const factory _QiitaPostResponse(
      {required String id,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'likes_count') required int likesCount,
      required List<TagJson> tags,
      required String title,
      required String url,
      required UserJson user}) = _$_QiitaPostResponse;
  const _QiitaPostResponse._() : super._();

  factory _QiitaPostResponse.fromJson(Map<String, dynamic> json) =
      _$_QiitaPostResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'likes_count')
  int get likesCount;
  @override
  List<TagJson> get tags;
  @override
  String get title;
  @override
  String get url;
  @override
  UserJson get user;
  @override
  @JsonKey(ignore: true)
  _$QiitaPostResponseCopyWith<_QiitaPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
