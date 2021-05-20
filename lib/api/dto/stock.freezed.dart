// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockDTO _$StockDTOFromJson(Map<String, dynamic> json) {
  return _StockDTO.fromJson(json);
}

/// @nodoc
class _$StockDTOTearOff {
  const _$StockDTOTearOff();

  _StockDTO call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'count') required int count,
      @JsonKey(name: 'box_id') required int boxId,
      @JsonKey(name: 'box') BoxDTO? box,
      @JsonKey(name: 'item_id') required int itemId,
      @JsonKey(name: 'item') ItemDTO? item}) {
    return _StockDTO(
      id: id,
      count: count,
      boxId: boxId,
      box: box,
      itemId: itemId,
      item: item,
    );
  }

  StockDTO fromJson(Map<String, Object> json) {
    return StockDTO.fromJson(json);
  }
}

/// @nodoc
const $StockDTO = _$StockDTOTearOff();

/// @nodoc
mixin _$StockDTO {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'box_id')
  int get boxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'box')
  BoxDTO? get box => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_id')
  int get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'item')
  ItemDTO? get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDTOCopyWith<StockDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDTOCopyWith<$Res> {
  factory $StockDTOCopyWith(StockDTO value, $Res Function(StockDTO) then) =
      _$StockDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'box_id') int boxId,
      @JsonKey(name: 'box') BoxDTO? box,
      @JsonKey(name: 'item_id') int itemId,
      @JsonKey(name: 'item') ItemDTO? item});

  $BoxDTOCopyWith<$Res>? get box;
  $ItemDTOCopyWith<$Res>? get item;
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
    Object? boxId = freezed,
    Object? box = freezed,
    Object? itemId = freezed,
    Object? item = freezed,
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
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int,
      box: box == freezed
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as BoxDTO?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDTO?,
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

  @override
  $ItemDTOCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemDTOCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$StockDTOCopyWith<$Res> implements $StockDTOCopyWith<$Res> {
  factory _$StockDTOCopyWith(_StockDTO value, $Res Function(_StockDTO) then) =
      __$StockDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'box_id') int boxId,
      @JsonKey(name: 'box') BoxDTO? box,
      @JsonKey(name: 'item_id') int itemId,
      @JsonKey(name: 'item') ItemDTO? item});

  @override
  $BoxDTOCopyWith<$Res>? get box;
  @override
  $ItemDTOCopyWith<$Res>? get item;
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
    Object? boxId = freezed,
    Object? box = freezed,
    Object? itemId = freezed,
    Object? item = freezed,
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
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int,
      box: box == freezed
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as BoxDTO?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockDTO implements _StockDTO {
  _$_StockDTO(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'box_id') required this.boxId,
      @JsonKey(name: 'box') this.box,
      @JsonKey(name: 'item_id') required this.itemId,
      @JsonKey(name: 'item') this.item});

  factory _$_StockDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StockDTOFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'box_id')
  final int boxId;
  @override
  @JsonKey(name: 'box')
  final BoxDTO? box;
  @override
  @JsonKey(name: 'item_id')
  final int itemId;
  @override
  @JsonKey(name: 'item')
  final ItemDTO? item;

  @override
  String toString() {
    return 'StockDTO(id: $id, count: $count, boxId: $boxId, box: $box, itemId: $itemId, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StockDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.boxId, boxId) ||
                const DeepCollectionEquality().equals(other.boxId, boxId)) &&
            (identical(other.box, box) ||
                const DeepCollectionEquality().equals(other.box, box)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(boxId) ^
      const DeepCollectionEquality().hash(box) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  _$StockDTOCopyWith<_StockDTO> get copyWith =>
      __$StockDTOCopyWithImpl<_StockDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StockDTOToJson(this);
  }
}

abstract class _StockDTO implements StockDTO {
  factory _StockDTO(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'count') required int count,
      @JsonKey(name: 'box_id') required int boxId,
      @JsonKey(name: 'box') BoxDTO? box,
      @JsonKey(name: 'item_id') required int itemId,
      @JsonKey(name: 'item') ItemDTO? item}) = _$_StockDTO;

  factory _StockDTO.fromJson(Map<String, dynamic> json) = _$_StockDTO.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'box_id')
  int get boxId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'box')
  BoxDTO? get box => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'item_id')
  int get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'item')
  ItemDTO? get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockDTOCopyWith<_StockDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
