// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostListStateTearOff {
  const _$PostListStateTearOff();

  _PostListState call(
      {List<QiitaPost> posts = const <QiitaPost>[],
      bool hasNext = false,
      int page = 1,
      String? query,
      PageState pageState = const PageStateLoading()}) {
    return _PostListState(
      posts: posts,
      hasNext: hasNext,
      page: page,
      query: query,
      pageState: pageState,
    );
  }
}

/// @nodoc
const $PostListState = _$PostListStateTearOff();

/// @nodoc
mixin _$PostListState {
  List<QiitaPost> get posts => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  PageState get pageState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListStateCopyWith<PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res>;
  $Res call(
      {List<QiitaPost> posts,
      bool hasNext,
      int page,
      String? query,
      PageState pageState});

  $PageStateCopyWith<$Res> get pageState;
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  final PostListState _value;
  // ignore: unused_field
  final $Res Function(PostListState) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasNext = freezed,
    Object? page = freezed,
    Object? query = freezed,
    Object? pageState = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<QiitaPost>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      pageState: pageState == freezed
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  @override
  $PageStateCopyWith<$Res> get pageState {
    return $PageStateCopyWith<$Res>(_value.pageState, (value) {
      return _then(_value.copyWith(pageState: value));
    });
  }
}

/// @nodoc
abstract class _$PostListStateCopyWith<$Res>
    implements $PostListStateCopyWith<$Res> {
  factory _$PostListStateCopyWith(
          _PostListState value, $Res Function(_PostListState) then) =
      __$PostListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<QiitaPost> posts,
      bool hasNext,
      int page,
      String? query,
      PageState pageState});

  @override
  $PageStateCopyWith<$Res> get pageState;
}

/// @nodoc
class __$PostListStateCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res>
    implements _$PostListStateCopyWith<$Res> {
  __$PostListStateCopyWithImpl(
      _PostListState _value, $Res Function(_PostListState) _then)
      : super(_value, (v) => _then(v as _PostListState));

  @override
  _PostListState get _value => super._value as _PostListState;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasNext = freezed,
    Object? page = freezed,
    Object? query = freezed,
    Object? pageState = freezed,
  }) {
    return _then(_PostListState(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<QiitaPost>,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      pageState: pageState == freezed
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$_PostListState implements _PostListState {
  const _$_PostListState(
      {this.posts = const <QiitaPost>[],
      this.hasNext = false,
      this.page = 1,
      this.query,
      this.pageState = const PageStateLoading()});

  @JsonKey()
  @override
  final List<QiitaPost> posts;
  @JsonKey()
  @override
  final bool hasNext;
  @JsonKey()
  @override
  final int page;
  @override
  final String? query;
  @JsonKey()
  @override
  final PageState pageState;

  @override
  String toString() {
    return 'PostListState(posts: $posts, hasNext: $hasNext, page: $page, query: $query, pageState: $pageState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostListState &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.pageState, pageState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(hasNext),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(pageState));

  @JsonKey(ignore: true)
  @override
  _$PostListStateCopyWith<_PostListState> get copyWith =>
      __$PostListStateCopyWithImpl<_PostListState>(this, _$identity);
}

abstract class _PostListState implements PostListState {
  const factory _PostListState(
      {List<QiitaPost> posts,
      bool hasNext,
      int page,
      String? query,
      PageState pageState}) = _$_PostListState;

  @override
  List<QiitaPost> get posts;
  @override
  bool get hasNext;
  @override
  int get page;
  @override
  String? get query;
  @override
  PageState get pageState;
  @override
  @JsonKey(ignore: true)
  _$PostListStateCopyWith<_PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}
