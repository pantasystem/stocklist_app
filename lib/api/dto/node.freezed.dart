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
class _$NodeDTOTearOff {
  const _$NodeDTOTearOff();

  _NodeDTO call(
      {required int id,
      required String name,
      required String path,
      required NodeType nodeType}) {
    return _NodeDTO(
      id: id,
      name: name,
      path: path,
      nodeType: nodeType,
    );
  }
}

/// @nodoc
const $NodeDTO = _$NodeDTOTearOff();

/// @nodoc
mixin _$NodeDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  NodeType get nodeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NodeDTOCopyWith<NodeDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeDTOCopyWith<$Res> {
  factory $NodeDTOCopyWith(NodeDTO value, $Res Function(NodeDTO) then) =
      _$NodeDTOCopyWithImpl<$Res>;
  $Res call({int id, String name, String path, NodeType nodeType});

  $NodeTypeCopyWith<$Res> get nodeType;
}

/// @nodoc
class _$NodeDTOCopyWithImpl<$Res> implements $NodeDTOCopyWith<$Res> {
  _$NodeDTOCopyWithImpl(this._value, this._then);

  final NodeDTO _value;
  // ignore: unused_field
  final $Res Function(NodeDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? nodeType = freezed,
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
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
    ));
  }

  @override
  $NodeTypeCopyWith<$Res> get nodeType {
    return $NodeTypeCopyWith<$Res>(_value.nodeType, (value) {
      return _then(_value.copyWith(nodeType: value));
    });
  }
}

/// @nodoc
abstract class _$NodeDTOCopyWith<$Res> implements $NodeDTOCopyWith<$Res> {
  factory _$NodeDTOCopyWith(_NodeDTO value, $Res Function(_NodeDTO) then) =
      __$NodeDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String path, NodeType nodeType});

  @override
  $NodeTypeCopyWith<$Res> get nodeType;
}

/// @nodoc
class __$NodeDTOCopyWithImpl<$Res> extends _$NodeDTOCopyWithImpl<$Res>
    implements _$NodeDTOCopyWith<$Res> {
  __$NodeDTOCopyWithImpl(_NodeDTO _value, $Res Function(_NodeDTO) _then)
      : super(_value, (v) => _then(v as _NodeDTO));

  @override
  _NodeDTO get _value => super._value as _NodeDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? nodeType = freezed,
  }) {
    return _then(_NodeDTO(
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
      nodeType: nodeType == freezed
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
    ));
  }
}

/// @nodoc

class _$_NodeDTO implements _NodeDTO {
  _$_NodeDTO(
      {required this.id,
      required this.name,
      required this.path,
      required this.nodeType});

  @override
  final int id;
  @override
  final String name;
  @override
  final String path;
  @override
  final NodeType nodeType;

  @override
  String toString() {
    return 'NodeDTO(id: $id, name: $name, path: $path, nodeType: $nodeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NodeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.nodeType, nodeType) ||
                const DeepCollectionEquality()
                    .equals(other.nodeType, nodeType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(nodeType);

  @JsonKey(ignore: true)
  @override
  _$NodeDTOCopyWith<_NodeDTO> get copyWith =>
      __$NodeDTOCopyWithImpl<_NodeDTO>(this, _$identity);
}

abstract class _NodeDTO implements NodeDTO {
  factory _NodeDTO(
      {required int id,
      required String name,
      required String path,
      required NodeType nodeType}) = _$_NodeDTO;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  NodeType get nodeType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NodeDTOCopyWith<_NodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
