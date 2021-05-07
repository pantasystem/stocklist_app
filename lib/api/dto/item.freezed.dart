// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemDTOTearOff {
  const _$ItemDTOTearOff();

  _ItemDTO call(
      {required int id,
      required String name,
      required String imagePath,
      required int homeId,
      List<User>? owners}) {
    return _ItemDTO(
      id: id,
      name: name,
      imagePath: imagePath,
      homeId: homeId,
      owners: owners,
    );
  }
}

/// @nodoc
const $ItemDTO = _$ItemDTOTearOff();

/// @nodoc
mixin _$ItemDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get homeId => throw _privateConstructorUsedError;
  List<User>? get owners => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDTOCopyWith<ItemDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDTOCopyWith<$Res> {
  factory $ItemDTOCopyWith(ItemDTO value, $Res Function(ItemDTO) then) =
      _$ItemDTOCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String imagePath, int homeId, List<User>? owners});
}

/// @nodoc
class _$ItemDTOCopyWithImpl<$Res> implements $ItemDTOCopyWith<$Res> {
  _$ItemDTOCopyWithImpl(this._value, this._then);

  final ItemDTO _value;
  // ignore: unused_field
  final $Res Function(ItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? homeId = freezed,
    Object? owners = freezed,
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
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      owners: owners == freezed
          ? _value.owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
abstract class _$ItemDTOCopyWith<$Res> implements $ItemDTOCopyWith<$Res> {
  factory _$ItemDTOCopyWith(_ItemDTO value, $Res Function(_ItemDTO) then) =
      __$ItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String imagePath, int homeId, List<User>? owners});
}

/// @nodoc
class __$ItemDTOCopyWithImpl<$Res> extends _$ItemDTOCopyWithImpl<$Res>
    implements _$ItemDTOCopyWith<$Res> {
  __$ItemDTOCopyWithImpl(_ItemDTO _value, $Res Function(_ItemDTO) _then)
      : super(_value, (v) => _then(v as _ItemDTO));

  @override
  _ItemDTO get _value => super._value as _ItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? homeId = freezed,
    Object? owners = freezed,
  }) {
    return _then(_ItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      owners: owners == freezed
          ? _value.owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc

class _$_ItemDTO implements _ItemDTO {
  _$_ItemDTO(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.homeId,
      this.owners});

  @override
  final int id;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final int homeId;
  @override
  final List<User>? owners;

  @override
  String toString() {
    return 'ItemDTO(id: $id, name: $name, imagePath: $imagePath, homeId: $homeId, owners: $owners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.homeId, homeId) ||
                const DeepCollectionEquality().equals(other.homeId, homeId)) &&
            (identical(other.owners, owners) ||
                const DeepCollectionEquality().equals(other.owners, owners)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(homeId) ^
      const DeepCollectionEquality().hash(owners);

  @JsonKey(ignore: true)
  @override
  _$ItemDTOCopyWith<_ItemDTO> get copyWith =>
      __$ItemDTOCopyWithImpl<_ItemDTO>(this, _$identity);
}

abstract class _ItemDTO implements ItemDTO {
  factory _ItemDTO(
      {required int id,
      required String name,
      required String imagePath,
      required int homeId,
      List<User>? owners}) = _$_ItemDTO;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  int get homeId => throw _privateConstructorUsedError;
  @override
  List<User>? get owners => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDTOCopyWith<_ItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemDetailDTOTearOff {
  const _$ItemDetailDTOTearOff();

  _ItemDetailDTO call(
      {required int id,
      required String name,
      required String imagePath,
      required int homeId,
      List<User>? owners,
      List<StockDTO>? stocks}) {
    return _ItemDetailDTO(
      id: id,
      name: name,
      imagePath: imagePath,
      homeId: homeId,
      owners: owners,
      stocks: stocks,
    );
  }
}

/// @nodoc
const $ItemDetailDTO = _$ItemDetailDTOTearOff();

/// @nodoc
mixin _$ItemDetailDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get homeId => throw _privateConstructorUsedError;
  List<User>? get owners => throw _privateConstructorUsedError;
  List<StockDTO>? get stocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDetailDTOCopyWith<ItemDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailDTOCopyWith<$Res> {
  factory $ItemDetailDTOCopyWith(
          ItemDetailDTO value, $Res Function(ItemDetailDTO) then) =
      _$ItemDetailDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String imagePath,
      int homeId,
      List<User>? owners,
      List<StockDTO>? stocks});
}

/// @nodoc
class _$ItemDetailDTOCopyWithImpl<$Res>
    implements $ItemDetailDTOCopyWith<$Res> {
  _$ItemDetailDTOCopyWithImpl(this._value, this._then);

  final ItemDetailDTO _value;
  // ignore: unused_field
  final $Res Function(ItemDetailDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? homeId = freezed,
    Object? owners = freezed,
    Object? stocks = freezed,
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
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      owners: owners == freezed
          ? _value.owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$ItemDetailDTOCopyWith<$Res>
    implements $ItemDetailDTOCopyWith<$Res> {
  factory _$ItemDetailDTOCopyWith(
          _ItemDetailDTO value, $Res Function(_ItemDetailDTO) then) =
      __$ItemDetailDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String imagePath,
      int homeId,
      List<User>? owners,
      List<StockDTO>? stocks});
}

/// @nodoc
class __$ItemDetailDTOCopyWithImpl<$Res>
    extends _$ItemDetailDTOCopyWithImpl<$Res>
    implements _$ItemDetailDTOCopyWith<$Res> {
  __$ItemDetailDTOCopyWithImpl(
      _ItemDetailDTO _value, $Res Function(_ItemDetailDTO) _then)
      : super(_value, (v) => _then(v as _ItemDetailDTO));

  @override
  _ItemDetailDTO get _value => super._value as _ItemDetailDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? homeId = freezed,
    Object? owners = freezed,
    Object? stocks = freezed,
  }) {
    return _then(_ItemDetailDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      owners: owners == freezed
          ? _value.owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockDTO>?,
    ));
  }
}

/// @nodoc

class _$_ItemDetailDTO implements _ItemDetailDTO {
  _$_ItemDetailDTO(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.homeId,
      this.owners,
      this.stocks});

  @override
  final int id;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  final int homeId;
  @override
  final List<User>? owners;
  @override
  final List<StockDTO>? stocks;

  @override
  String toString() {
    return 'ItemDetailDTO(id: $id, name: $name, imagePath: $imagePath, homeId: $homeId, owners: $owners, stocks: $stocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemDetailDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.homeId, homeId) ||
                const DeepCollectionEquality().equals(other.homeId, homeId)) &&
            (identical(other.owners, owners) ||
                const DeepCollectionEquality().equals(other.owners, owners)) &&
            (identical(other.stocks, stocks) ||
                const DeepCollectionEquality().equals(other.stocks, stocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(homeId) ^
      const DeepCollectionEquality().hash(owners) ^
      const DeepCollectionEquality().hash(stocks);

  @JsonKey(ignore: true)
  @override
  _$ItemDetailDTOCopyWith<_ItemDetailDTO> get copyWith =>
      __$ItemDetailDTOCopyWithImpl<_ItemDetailDTO>(this, _$identity);
}

abstract class _ItemDetailDTO implements ItemDetailDTO {
  factory _ItemDetailDTO(
      {required int id,
      required String name,
      required String imagePath,
      required int homeId,
      List<User>? owners,
      List<StockDTO>? stocks}) = _$_ItemDetailDTO;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  int get homeId => throw _privateConstructorUsedError;
  @override
  List<User>? get owners => throw _privateConstructorUsedError;
  @override
  List<StockDTO>? get stocks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDetailDTOCopyWith<_ItemDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
