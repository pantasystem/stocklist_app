// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NodeTearOff {
  const _$NodeTearOff();

  _Node call(
      {required int id,
      required String name,
      required String path,
      required NodeType type}) {
    return _Node(
      id: id,
      name: name,
      path: path,
      type: type,
    );
  }
}

/// @nodoc
const $Node = _$NodeTearOff();

/// @nodoc
mixin _$Node {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  NodeType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NodeCopyWith<Node> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeCopyWith<$Res> {
  factory $NodeCopyWith(Node value, $Res Function(Node) then) =
      _$NodeCopyWithImpl<$Res>;
  $Res call({int id, String name, String path, NodeType type});

  $NodeTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$NodeCopyWithImpl<$Res> implements $NodeCopyWith<$Res> {
  _$NodeCopyWithImpl(this._value, this._then);

  final Node _value;
  // ignore: unused_field
  final $Res Function(Node) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? type = freezed,
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
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NodeType,
    ));
  }

  @override
  $NodeTypeCopyWith<$Res> get type {
    return $NodeTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$NodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory _$NodeCopyWith(_Node value, $Res Function(_Node) then) =
      __$NodeCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String path, NodeType type});

  @override
  $NodeTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$NodeCopyWithImpl<$Res> extends _$NodeCopyWithImpl<$Res>
    implements _$NodeCopyWith<$Res> {
  __$NodeCopyWithImpl(_Node _value, $Res Function(_Node) _then)
      : super(_value, (v) => _then(v as _Node));

  @override
  _Node get _value => super._value as _Node;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? type = freezed,
  }) {
    return _then(_Node(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NodeType,
    ));
  }
}

/// @nodoc

class _$_Node implements _Node {
  _$_Node(
      {required this.id,
      required this.name,
      required this.path,
      required this.type});

  @override
  final int id;
  @override
  final String name;
  @override
  final String path;
  @override
  final NodeType type;

  @override
  String toString() {
    return 'Node(id: $id, name: $name, path: $path, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Node &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$NodeCopyWith<_Node> get copyWith =>
      __$NodeCopyWithImpl<_Node>(this, _$identity);
}

abstract class _Node implements Node {
  factory _Node(
      {required int id,
      required String name,
      required String path,
      required NodeType type}) = _$_Node;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  NodeType get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NodeCopyWith<_Node> get copyWith => throw _privateConstructorUsedError;
}
