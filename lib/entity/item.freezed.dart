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
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required int id,
      required String name,
      required String imagePath,
      required int homeId,
      List<User>? owners,
      required List<int> stockIds,
      required String imageUrl,
      required int itemQuantity,
      required String description,
      required bool isDisposable,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String? categoryPath,
      required int? categoryId}) {
    return _Item(
      id: id,
      name: name,
      imagePath: imagePath,
      homeId: homeId,
      owners: owners,
      stockIds: stockIds,
      imageUrl: imageUrl,
      itemQuantity: itemQuantity,
      description: description,
      isDisposable: isDisposable,
      createdAt: createdAt,
      updatedAt: updatedAt,
      categoryPath: categoryPath,
      categoryId: categoryId,
    );
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  int get homeId => throw _privateConstructorUsedError;
  List<User>? get owners => throw _privateConstructorUsedError;
  List<int> get stockIds => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get itemQuantity => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isDisposable => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String? get categoryPath => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String imagePath,
      int homeId,
      List<User>? owners,
      List<int> stockIds,
      String imageUrl,
      int itemQuantity,
      String description,
      bool isDisposable,
      DateTime createdAt,
      DateTime updatedAt,
      String? categoryPath,
      int? categoryId});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? homeId = freezed,
    Object? owners = freezed,
    Object? stockIds = freezed,
    Object? imageUrl = freezed,
    Object? itemQuantity = freezed,
    Object? description = freezed,
    Object? isDisposable = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? categoryPath = freezed,
    Object? categoryId = freezed,
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
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String imagePath,
      int homeId,
      List<User>? owners,
      List<int> stockIds,
      String imageUrl,
      int itemQuantity,
      String description,
      bool isDisposable,
      DateTime createdAt,
      DateTime updatedAt,
      String? categoryPath,
      int? categoryId});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imagePath = freezed,
    Object? homeId = freezed,
    Object? owners = freezed,
    Object? stockIds = freezed,
    Object? imageUrl = freezed,
    Object? itemQuantity = freezed,
    Object? description = freezed,
    Object? isDisposable = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? categoryPath = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_Item(
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
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$_Item implements _Item {
  _$_Item(
      {required this.id,
      required this.name,
      required this.imagePath,
      required this.homeId,
      this.owners,
      required this.stockIds,
      required this.imageUrl,
      required this.itemQuantity,
      required this.description,
      required this.isDisposable,
      required this.createdAt,
      required this.updatedAt,
      required this.categoryPath,
      required this.categoryId});

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
  final List<int> stockIds;
  @override
  final String imageUrl;
  @override
  final int itemQuantity;
  @override
  final String description;
  @override
  final bool isDisposable;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? categoryPath;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, imagePath: $imagePath, homeId: $homeId, owners: $owners, stockIds: $stockIds, imageUrl: $imageUrl, itemQuantity: $itemQuantity, description: $description, isDisposable: $isDisposable, createdAt: $createdAt, updatedAt: $updatedAt, categoryPath: $categoryPath, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
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
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(homeId) ^
      const DeepCollectionEquality().hash(owners) ^
      const DeepCollectionEquality().hash(stockIds) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(itemQuantity) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isDisposable) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(categoryPath) ^
      const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item implements Item {
  factory _Item(
      {required int id,
      required String name,
      required String imagePath,
      required int homeId,
      List<User>? owners,
      required List<int> stockIds,
      required String imageUrl,
      required int itemQuantity,
      required String description,
      required bool isDisposable,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String? categoryPath,
      required int? categoryId}) = _$_Item;

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
  List<int> get stockIds => throw _privateConstructorUsedError;
  @override
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  int get itemQuantity => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get isDisposable => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  String? get categoryPath => throw _privateConstructorUsedError;
  @override
  int? get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
