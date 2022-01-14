// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tag_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagJson _$TagJsonFromJson(Map<String, dynamic> json) {
  return _TagJson.fromJson(json);
}

/// @nodoc
class _$TagJsonTearOff {
  const _$TagJsonTearOff();

  _TagJson call({required String name, required List<String> versions}) {
    return _TagJson(
      name: name,
      versions: versions,
    );
  }

  TagJson fromJson(Map<String, Object?> json) {
    return TagJson.fromJson(json);
  }
}

/// @nodoc
const $TagJson = _$TagJsonTearOff();

/// @nodoc
mixin _$TagJson {
  String get name => throw _privateConstructorUsedError;
  List<String> get versions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagJsonCopyWith<TagJson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagJsonCopyWith<$Res> {
  factory $TagJsonCopyWith(TagJson value, $Res Function(TagJson) then) =
      _$TagJsonCopyWithImpl<$Res>;
  $Res call({String name, List<String> versions});
}

/// @nodoc
class _$TagJsonCopyWithImpl<$Res> implements $TagJsonCopyWith<$Res> {
  _$TagJsonCopyWithImpl(this._value, this._then);

  final TagJson _value;
  // ignore: unused_field
  final $Res Function(TagJson) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TagJsonCopyWith<$Res> implements $TagJsonCopyWith<$Res> {
  factory _$TagJsonCopyWith(_TagJson value, $Res Function(_TagJson) then) =
      __$TagJsonCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> versions});
}

/// @nodoc
class __$TagJsonCopyWithImpl<$Res> extends _$TagJsonCopyWithImpl<$Res>
    implements _$TagJsonCopyWith<$Res> {
  __$TagJsonCopyWithImpl(_TagJson _value, $Res Function(_TagJson) _then)
      : super(_value, (v) => _then(v as _TagJson));

  @override
  _TagJson get _value => super._value as _TagJson;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
  }) {
    return _then(_TagJson(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagJson extends _TagJson {
  const _$_TagJson({required this.name, required this.versions}) : super._();

  factory _$_TagJson.fromJson(Map<String, dynamic> json) =>
      _$$_TagJsonFromJson(json);

  @override
  final String name;
  @override
  final List<String> versions;

  @override
  String toString() {
    return 'TagJson(name: $name, versions: $versions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagJson &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.versions, versions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(versions));

  @JsonKey(ignore: true)
  @override
  _$TagJsonCopyWith<_TagJson> get copyWith =>
      __$TagJsonCopyWithImpl<_TagJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagJsonToJson(this);
  }
}

abstract class _TagJson extends TagJson {
  const factory _TagJson(
      {required String name, required List<String> versions}) = _$_TagJson;
  const _TagJson._() : super._();

  factory _TagJson.fromJson(Map<String, dynamic> json) = _$_TagJson.fromJson;

  @override
  String get name;
  @override
  List<String> get versions;
  @override
  @JsonKey(ignore: true)
  _$TagJsonCopyWith<_TagJson> get copyWith =>
      throw _privateConstructorUsedError;
}
