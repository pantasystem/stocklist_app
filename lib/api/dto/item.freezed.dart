// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDTO _$ItemDTOFromJson(Map<String, dynamic> json) {
  return _ItemDTO.fromJson(json);
}

/// @nodoc
class _$ItemDTOTearOff {
  const _$ItemDTOTearOff();

  _ItemDTO call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'image_path') required String imagePath,
      @JsonKey(name: 'home_id') required int homeId,
      @JsonKey(name: 'owners') List<UserDTO>? owners,
      @JsonKey(name: 'stocks') List<StockDTO>? stocks}) {
    return _ItemDTO(
      id: id,
      name: name,
      imagePath: imagePath,
      homeId: homeId,
      owners: owners,
      stocks: stocks,
    );
  }

  ItemDTO fromJson(Map<String, Object> json) {
    return ItemDTO.fromJson(json);
  }
}

/// @nodoc
const $ItemDTO = _$ItemDTOTearOff();

/// @nodoc
mixin _$ItemDTO {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_id')
  int get homeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owners')
  List<UserDTO>? get owners => throw _privateConstructorUsedError;
  @JsonKey(name: 'stocks')
  List<StockDTO>? get stocks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDTOCopyWith<ItemDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDTOCopyWith<$Res> {
  factory $ItemDTOCopyWith(ItemDTO value, $Res Function(ItemDTO) then) =
      _$ItemDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'home_id') int homeId,
      @JsonKey(name: 'owners') List<UserDTO>? owners,
      @JsonKey(name: 'stocks') List<StockDTO>? stocks});
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
              as List<UserDTO>?,
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$ItemDTOCopyWith<$Res> implements $ItemDTOCopyWith<$Res> {
  factory _$ItemDTOCopyWith(_ItemDTO value, $Res Function(_ItemDTO) then) =
      __$ItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image_path') String imagePath,
      @JsonKey(name: 'home_id') int homeId,
      @JsonKey(name: 'owners') List<UserDTO>? owners,
      @JsonKey(name: 'stocks') List<StockDTO>? stocks});
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
    Object? stocks = freezed,
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
              as List<UserDTO>?,
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDTO implements _ItemDTO {
  _$_ItemDTO(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'image_path') required this.imagePath,
      @JsonKey(name: 'home_id') required this.homeId,
      @JsonKey(name: 'owners') this.owners,
      @JsonKey(name: 'stocks') this.stocks});

  factory _$_ItemDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemDTOFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'image_path')
  final String imagePath;
  @override
  @JsonKey(name: 'home_id')
  final int homeId;
  @override
  @JsonKey(name: 'owners')
  final List<UserDTO>? owners;
  @override
  @JsonKey(name: 'stocks')
  final List<StockDTO>? stocks;

  @override
  String toString() {
    return 'ItemDTO(id: $id, name: $name, imagePath: $imagePath, homeId: $homeId, owners: $owners, stocks: $stocks)';
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
  _$ItemDTOCopyWith<_ItemDTO> get copyWith =>
      __$ItemDTOCopyWithImpl<_ItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemDTOToJson(this);
  }
}

abstract class _ItemDTO implements ItemDTO {
  factory _ItemDTO(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'image_path') required String imagePath,
      @JsonKey(name: 'home_id') required int homeId,
      @JsonKey(name: 'owners') List<UserDTO>? owners,
      @JsonKey(name: 'stocks') List<StockDTO>? stocks}) = _$_ItemDTO;

  factory _ItemDTO.fromJson(Map<String, dynamic> json) = _$_ItemDTO.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_path')
  String get imagePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'home_id')
  int get homeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'owners')
  List<UserDTO>? get owners => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stocks')
  List<StockDTO>? get stocks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDTOCopyWith<_ItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
