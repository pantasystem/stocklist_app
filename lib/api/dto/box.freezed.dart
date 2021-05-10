// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoxDTO _$BoxDTOFromJson(Map<String, dynamic> json) {
  return _BoxDTO.fromJson(json);
}

/// @nodoc
class _$BoxDTOTearOff {
  const _$BoxDTOTearOff();

  _BoxDTO call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'description') String? description}) {
    return _BoxDTO(
      id: id,
      name: name,
      description: description,
    );
  }

  BoxDTO fromJson(Map<String, Object> json) {
    return BoxDTO.fromJson(json);
  }
}

/// @nodoc
const $BoxDTO = _$BoxDTOTearOff();

/// @nodoc
mixin _$BoxDTO {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxDTOCopyWith<BoxDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxDTOCopyWith<$Res> {
  factory $BoxDTOCopyWith(BoxDTO value, $Res Function(BoxDTO) then) =
      _$BoxDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$BoxDTOCopyWithImpl<$Res> implements $BoxDTOCopyWith<$Res> {
  _$BoxDTOCopyWithImpl(this._value, this._then);

  final BoxDTO _value;
  // ignore: unused_field
  final $Res Function(BoxDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BoxDTOCopyWith<$Res> implements $BoxDTOCopyWith<$Res> {
  factory _$BoxDTOCopyWith(_BoxDTO value, $Res Function(_BoxDTO) then) =
      __$BoxDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$BoxDTOCopyWithImpl<$Res> extends _$BoxDTOCopyWithImpl<$Res>
    implements _$BoxDTOCopyWith<$Res> {
  __$BoxDTOCopyWithImpl(_BoxDTO _value, $Res Function(_BoxDTO) _then)
      : super(_value, (v) => _then(v as _BoxDTO));

  @override
  _BoxDTO get _value => super._value as _BoxDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_BoxDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoxDTO implements _BoxDTO {
  _$_BoxDTO(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') this.description});

  factory _$_BoxDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_BoxDTOFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'BoxDTO(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoxDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$BoxDTOCopyWith<_BoxDTO> get copyWith =>
      __$BoxDTOCopyWithImpl<_BoxDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoxDTOToJson(this);
  }
}

abstract class _BoxDTO implements BoxDTO {
  factory _BoxDTO(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'description') String? description}) = _$_BoxDTO;

  factory _BoxDTO.fromJson(Map<String, dynamic> json) = _$_BoxDTO.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoxDTOCopyWith<_BoxDTO> get copyWith => throw _privateConstructorUsedError;
}
