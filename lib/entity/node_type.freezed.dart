// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'node_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NodeTypeTearOff {
  const _$NodeTypeTearOff();

  _NodeType call(
      {required int id,
      required String name,
      required int homeId,
      required DateTime createdAt,
      DateTime? updatedAt}) {
    return _NodeType(
      id: id,
      name: name,
      homeId: homeId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $NodeType = _$NodeTypeTearOff();

/// @nodoc
mixin _$NodeType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get homeId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NodeTypeCopyWith<NodeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeTypeCopyWith<$Res> {
  factory $NodeTypeCopyWith(NodeType value, $Res Function(NodeType) then) =
      _$NodeTypeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int homeId,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$NodeTypeCopyWithImpl<$Res> implements $NodeTypeCopyWith<$Res> {
  _$NodeTypeCopyWithImpl(this._value, this._then);

  final NodeType _value;
  // ignore: unused_field
  final $Res Function(NodeType) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? homeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$NodeTypeCopyWith<$Res> implements $NodeTypeCopyWith<$Res> {
  factory _$NodeTypeCopyWith(_NodeType value, $Res Function(_NodeType) then) =
      __$NodeTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int homeId,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$NodeTypeCopyWithImpl<$Res> extends _$NodeTypeCopyWithImpl<$Res>
    implements _$NodeTypeCopyWith<$Res> {
  __$NodeTypeCopyWithImpl(_NodeType _value, $Res Function(_NodeType) _then)
      : super(_value, (v) => _then(v as _NodeType));

  @override
  _NodeType get _value => super._value as _NodeType;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? homeId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_NodeType(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
class _$_NodeType implements _NodeType {
  _$_NodeType(
      {required this.id,
      required this.name,
      required this.homeId,
      required this.createdAt,
      this.updatedAt});

  @override
  final int id;
  @override
  final String name;
  @override
  final int homeId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'NodeType(id: $id, name: $name, homeId: $homeId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NodeType &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.homeId, homeId) ||
                const DeepCollectionEquality().equals(other.homeId, homeId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(homeId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$NodeTypeCopyWith<_NodeType> get copyWith =>
      __$NodeTypeCopyWithImpl<_NodeType>(this, _$identity);
}

abstract class _NodeType implements NodeType {
  factory _NodeType(
      {required int id,
      required String name,
      required int homeId,
      required DateTime createdAt,
      DateTime? updatedAt}) = _$_NodeType;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get homeId => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NodeTypeCopyWith<_NodeType> get copyWith =>
      throw _privateConstructorUsedError;
}
