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
      int? itemId,
      List<User>? owners}) {
    return _ItemDTO(
      id: id,
      name: name,
      imagePath: imagePath,
      homeId: homeId,
      itemId: itemId,
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
  int? get itemId => throw _privateConstructorUsedError;
  List<User>? get owners => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDTOCopyWith<ItemDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDTOCopyWith<$Res> {
  factory $ItemDTOCopyWith(ItemDTO value, $Res Function(ItemDTO) then) =
      _$ItemDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String imagePath,
      int homeId,
      int? itemId,
      List<User>? owners});
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
    Object? itemId = freezed,
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
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {int id,
      String name,
      String imagePath,
      int homeId,
      int? itemId,
      List<User>? owners});
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
    Object? itemId = freezed,
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
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      this.itemId,
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
  final int? itemId;
  @override
  final List<User>? owners;

  @override
  String toString() {
    return 'ItemDTO(id: $id, name: $name, imagePath: $imagePath, homeId: $homeId, itemId: $itemId, owners: $owners)';
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
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
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
      const DeepCollectionEquality().hash(itemId) ^
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
      int? itemId,
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
  int? get itemId => throw _privateConstructorUsedError;
  @override
  List<User>? get owners => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemDTOCopyWith<_ItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
