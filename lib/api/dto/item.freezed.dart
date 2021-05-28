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
      @JsonKey(name: 'stocks') List<StockDTO>? stocks,
      @JsonKey(name: 'stock_ids') required List<int> stockIds,
      @JsonKey(name: 'image_url') required String imageUrl,
      @JsonKey(name: 'item_quantity') int? itemQuantity,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'is_disposable') required bool isDisposable,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'category_path') required String? categoryPath,
      @JsonKey(name: 'category_id') required int? categoryId,
      @JsonKey(name: 'box_ids') required List<int> boxIds,
      @JsonKey(name: 'stock_expiries') required List<DateTime> stockExpiries}) {
    return _ItemDTO(
      id: id,
      name: name,
      imagePath: imagePath,
      homeId: homeId,
      owners: owners,
      stocks: stocks,
      stockIds: stockIds,
      imageUrl: imageUrl,
      itemQuantity: itemQuantity,
      description: description,
      isDisposable: isDisposable,
      createdAt: createdAt,
      updatedAt: updatedAt,
      categoryPath: categoryPath,
      categoryId: categoryId,
      boxIds: boxIds,
      stockExpiries: stockExpiries,
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
  @JsonKey(name: 'stock_ids')
  List<int> get stockIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_quantity')
  int? get itemQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_disposable')
  bool get isDisposable => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_path')
  String? get categoryPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'box_ids')
  List<int> get boxIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_expiries')
  List<DateTime> get stockExpiries => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'stocks') List<StockDTO>? stocks,
      @JsonKey(name: 'stock_ids') List<int> stockIds,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'item_quantity') int? itemQuantity,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'is_disposable') bool isDisposable,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'category_path') String? categoryPath,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'box_ids') List<int> boxIds,
      @JsonKey(name: 'stock_expiries') List<DateTime> stockExpiries});
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
    Object? stockIds = freezed,
    Object? imageUrl = freezed,
    Object? itemQuantity = freezed,
    Object? description = freezed,
    Object? isDisposable = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? categoryPath = freezed,
    Object? categoryId = freezed,
    Object? boxIds = freezed,
    Object? stockExpiries = freezed,
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
      stockIds: stockIds == freezed
          ? _value.stockIds
          : stockIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemQuantity: itemQuantity == freezed
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisposable: isDisposable == freezed
          ? _value.isDisposable
          : isDisposable // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryPath: categoryPath == freezed
          ? _value.categoryPath
          : categoryPath // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      boxIds: boxIds == freezed
          ? _value.boxIds
          : boxIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      stockExpiries: stockExpiries == freezed
          ? _value.stockExpiries
          : stockExpiries // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
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
      @JsonKey(name: 'stocks') List<StockDTO>? stocks,
      @JsonKey(name: 'stock_ids') List<int> stockIds,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'item_quantity') int? itemQuantity,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'is_disposable') bool isDisposable,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'category_path') String? categoryPath,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'box_ids') List<int> boxIds,
      @JsonKey(name: 'stock_expiries') List<DateTime> stockExpiries});
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
    Object? stockIds = freezed,
    Object? imageUrl = freezed,
    Object? itemQuantity = freezed,
    Object? description = freezed,
    Object? isDisposable = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? categoryPath = freezed,
    Object? categoryId = freezed,
    Object? boxIds = freezed,
    Object? stockExpiries = freezed,
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
      stockIds: stockIds == freezed
          ? _value.stockIds
          : stockIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemQuantity: itemQuantity == freezed
          ? _value.itemQuantity
          : itemQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisposable: isDisposable == freezed
          ? _value.isDisposable
          : isDisposable // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categoryPath: categoryPath == freezed
          ? _value.categoryPath
          : categoryPath // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      boxIds: boxIds == freezed
          ? _value.boxIds
          : boxIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      stockExpiries: stockExpiries == freezed
          ? _value.stockExpiries
          : stockExpiries // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
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
      @JsonKey(name: 'stocks') this.stocks,
      @JsonKey(name: 'stock_ids') required this.stockIds,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'item_quantity') this.itemQuantity,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'is_disposable') required this.isDisposable,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'category_path') required this.categoryPath,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'box_ids') required this.boxIds,
      @JsonKey(name: 'stock_expiries') required this.stockExpiries});

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
  @JsonKey(name: 'stock_ids')
  final List<int> stockIds;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'item_quantity')
  final int? itemQuantity;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'is_disposable')
  final bool isDisposable;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'category_path')
  final String? categoryPath;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'box_ids')
  final List<int> boxIds;
  @override
  @JsonKey(name: 'stock_expiries')
  final List<DateTime> stockExpiries;

  @override
  String toString() {
    return 'ItemDTO(id: $id, name: $name, imagePath: $imagePath, homeId: $homeId, owners: $owners, stocks: $stocks, stockIds: $stockIds, imageUrl: $imageUrl, itemQuantity: $itemQuantity, description: $description, isDisposable: $isDisposable, createdAt: $createdAt, updatedAt: $updatedAt, categoryPath: $categoryPath, categoryId: $categoryId, boxIds: $boxIds, stockExpiries: $stockExpiries)';
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
                const DeepCollectionEquality().equals(other.stocks, stocks)) &&
            (identical(other.stockIds, stockIds) ||
                const DeepCollectionEquality()
                    .equals(other.stockIds, stockIds)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.itemQuantity, itemQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.itemQuantity, itemQuantity)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isDisposable, isDisposable) ||
                const DeepCollectionEquality()
                    .equals(other.isDisposable, isDisposable)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.categoryPath, categoryPath) ||
                const DeepCollectionEquality()
                    .equals(other.categoryPath, categoryPath)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.boxIds, boxIds) ||
                const DeepCollectionEquality().equals(other.boxIds, boxIds)) &&
            (identical(other.stockExpiries, stockExpiries) ||
                const DeepCollectionEquality()
                    .equals(other.stockExpiries, stockExpiries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(homeId) ^
      const DeepCollectionEquality().hash(owners) ^
      const DeepCollectionEquality().hash(stocks) ^
      const DeepCollectionEquality().hash(stockIds) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(itemQuantity) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isDisposable) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(categoryPath) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(boxIds) ^
      const DeepCollectionEquality().hash(stockExpiries);

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
      {@JsonKey(name: 'id')
          required int id,
      @JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'image_path')
          required String imagePath,
      @JsonKey(name: 'home_id')
          required int homeId,
      @JsonKey(name: 'owners')
          List<UserDTO>? owners,
      @JsonKey(name: 'stocks')
          List<StockDTO>? stocks,
      @JsonKey(name: 'stock_ids')
          required List<int> stockIds,
      @JsonKey(name: 'image_url')
          required String imageUrl,
      @JsonKey(name: 'item_quantity')
          int? itemQuantity,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'is_disposable')
          required bool isDisposable,
      @JsonKey(name: 'created_at')
          required DateTime createdAt,
      @JsonKey(name: 'updated_at')
          required DateTime updatedAt,
      @JsonKey(name: 'category_path')
          required String? categoryPath,
      @JsonKey(name: 'category_id')
          required int? categoryId,
      @JsonKey(name: 'box_ids')
          required List<int> boxIds,
      @JsonKey(name: 'stock_expiries')
          required List<DateTime> stockExpiries}) = _$_ItemDTO;

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
  @JsonKey(name: 'stock_ids')
  List<int> get stockIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'item_quantity')
  int? get itemQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_disposable')
  bool get isDisposable => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_path')
  String? get categoryPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'box_ids')
  List<int> get boxIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stock_expiries')
  List<DateTime> get stockExpiries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDTOCopyWith<_ItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
