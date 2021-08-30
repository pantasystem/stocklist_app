// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDTO _$HomeDTOFromJson(Map<String, dynamic> json) {
  return _HomeDTO.fromJson(json);
}

/// @nodoc
class _$HomeDTOTearOff {
  const _$HomeDTOTearOff();

  _HomeDTO call(
      {required int id, required String name, required List<UserDTO> members}) {
    return _HomeDTO(
      id: id,
      name: name,
      members: members,
    );
  }

  HomeDTO fromJson(Map<String, Object> json) {
    return HomeDTO.fromJson(json);
  }
}

/// @nodoc
const $HomeDTO = _$HomeDTOTearOff();

/// @nodoc
mixin _$HomeDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<UserDTO> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDTOCopyWith<HomeDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDTOCopyWith<$Res> {
  factory $HomeDTOCopyWith(HomeDTO value, $Res Function(HomeDTO) then) =
      _$HomeDTOCopyWithImpl<$Res>;
  $Res call({int id, String name, List<UserDTO> members});
}

/// @nodoc
class _$HomeDTOCopyWithImpl<$Res> implements $HomeDTOCopyWith<$Res> {
  _$HomeDTOCopyWithImpl(this._value, this._then);

  final HomeDTO _value;
  // ignore: unused_field
  final $Res Function(HomeDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? members = freezed,
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
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
    ));
  }
}

/// @nodoc
abstract class _$HomeDTOCopyWith<$Res> implements $HomeDTOCopyWith<$Res> {
  factory _$HomeDTOCopyWith(_HomeDTO value, $Res Function(_HomeDTO) then) =
      __$HomeDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, List<UserDTO> members});
}

/// @nodoc
class __$HomeDTOCopyWithImpl<$Res> extends _$HomeDTOCopyWithImpl<$Res>
    implements _$HomeDTOCopyWith<$Res> {
  __$HomeDTOCopyWithImpl(_HomeDTO _value, $Res Function(_HomeDTO) _then)
      : super(_value, (v) => _then(v as _HomeDTO));

  @override
  _HomeDTO get _value => super._value as _HomeDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? members = freezed,
  }) {
    return _then(_HomeDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<UserDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeDTO implements _HomeDTO {
  _$_HomeDTO({required this.id, required this.name, required this.members});

  factory _$_HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final List<UserDTO> members;

  @override
  String toString() {
    return 'HomeDTO(id: $id, name: $name, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(members);

  @JsonKey(ignore: true)
  @override
  _$HomeDTOCopyWith<_HomeDTO> get copyWith =>
      __$HomeDTOCopyWithImpl<_HomeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeDTOToJson(this);
  }
}

abstract class _HomeDTO implements HomeDTO {
  factory _HomeDTO(
      {required int id,
      required String name,
      required List<UserDTO> members}) = _$_HomeDTO;

  factory _HomeDTO.fromJson(Map<String, dynamic> json) = _$_HomeDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<UserDTO> get members => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeDTOCopyWith<_HomeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
