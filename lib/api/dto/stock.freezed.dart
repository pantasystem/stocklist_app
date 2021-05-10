// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StockDTOTearOff {
  const _$StockDTOTearOff();

  _StockDTO call(
      {required int id,
      required int count,
      required String name,
      int? boxId,
      BoxDTO? box}) {
    return _StockDTO(
      id: id,
      count: count,
      name: name,
      boxId: boxId,
      box: box,
    );
  }
}

/// @nodoc
const $StockDTO = _$StockDTOTearOff();

/// @nodoc
mixin _$StockDTO {
  int get id => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get boxId => throw _privateConstructorUsedError;
  BoxDTO? get box => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockDTOCopyWith<StockDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDTOCopyWith<$Res> {
  factory $StockDTOCopyWith(StockDTO value, $Res Function(StockDTO) then) =
      _$StockDTOCopyWithImpl<$Res>;
  $Res call({int id, int count, String name, int? boxId, BoxDTO? box});

  $BoxDTOCopyWith<$Res>? get box;
}

/// @nodoc
class _$StockDTOCopyWithImpl<$Res> implements $StockDTOCopyWith<$Res> {
  _$StockDTOCopyWithImpl(this._value, this._then);

  final StockDTO _value;
  // ignore: unused_field
  final $Res Function(StockDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
    Object? name = freezed,
    Object? boxId = freezed,
    Object? box = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int?,
      box: box == freezed
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as BoxDTO?,
    ));
  }

  @override
  $BoxDTOCopyWith<$Res>? get box {
    if (_value.box == null) {
      return null;
    }

    return $BoxDTOCopyWith<$Res>(_value.box!, (value) {
      return _then(_value.copyWith(box: value));
    });
  }
}

/// @nodoc
abstract class _$StockDTOCopyWith<$Res> implements $StockDTOCopyWith<$Res> {
  factory _$StockDTOCopyWith(_StockDTO value, $Res Function(_StockDTO) then) =
      __$StockDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, int count, String name, int? boxId, BoxDTO? box});

  @override
  $BoxDTOCopyWith<$Res>? get box;
}

/// @nodoc
class __$StockDTOCopyWithImpl<$Res> extends _$StockDTOCopyWithImpl<$Res>
    implements _$StockDTOCopyWith<$Res> {
  __$StockDTOCopyWithImpl(_StockDTO _value, $Res Function(_StockDTO) _then)
      : super(_value, (v) => _then(v as _StockDTO));

  @override
  _StockDTO get _value => super._value as _StockDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? count = freezed,
    Object? name = freezed,
    Object? boxId = freezed,
    Object? box = freezed,
  }) {
    return _then(_StockDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int?,
      box: box == freezed
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as BoxDTO?,
    ));
  }
}

/// @nodoc

class _$_StockDTO implements _StockDTO {
  _$_StockDTO(
      {required this.id,
      required this.count,
      required this.name,
      this.boxId,
      this.box});

  @override
  final int id;
  @override
  final int count;
  @override
  final String name;
  @override
  final int? boxId;
  @override
  final BoxDTO? box;

  @override
  String toString() {
    return 'StockDTO(id: $id, count: $count, name: $name, boxId: $boxId, box: $box)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StockDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.boxId, boxId) ||
                const DeepCollectionEquality().equals(other.boxId, boxId)) &&
            (identical(other.box, box) ||
                const DeepCollectionEquality().equals(other.box, box)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(boxId) ^
      const DeepCollectionEquality().hash(box);

  @JsonKey(ignore: true)
  @override
  _$StockDTOCopyWith<_StockDTO> get copyWith =>
      __$StockDTOCopyWithImpl<_StockDTO>(this, _$identity);
}

abstract class _StockDTO implements StockDTO {
  factory _StockDTO(
      {required int id,
      required int count,
      required String name,
      int? boxId,
      BoxDTO? box}) = _$_StockDTO;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int? get boxId => throw _privateConstructorUsedError;
  @override
  BoxDTO? get box => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockDTOCopyWith<_StockDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
