// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingTaskDTO _$ShoppingTaskDTOFromJson(Map<String, dynamic> json) {
  return _ShoppingTaskDTO.fromJson(json);
}

/// @nodoc
class _$ShoppingTaskDTOTearOff {
  const _$ShoppingTaskDTOTearOff();

  _ShoppingTaskDTO call(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'item_id') required int itemId,
      @JsonKey(name: 'box_id') required int? boxId,
      @JsonKey(name: 'box') required BoxDTO? box,
      @JsonKey(name: 'item') required ItemDTO? item,
      @JsonKey(name: 'completed_at') required DateTime? completedAt,
      @JsonKey(name: 'shopping_list_id') required int shoppingListId,
      @JsonKey(name: 'is_completed') required bool isCompleted,
      @JsonKey(name: 'count') required int? count}) {
    return _ShoppingTaskDTO(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      itemId: itemId,
      boxId: boxId,
      box: box,
      item: item,
      completedAt: completedAt,
      shoppingListId: shoppingListId,
      isCompleted: isCompleted,
      count: count,
    );
  }

  ShoppingTaskDTO fromJson(Map<String, Object> json) {
    return ShoppingTaskDTO.fromJson(json);
  }
}

/// @nodoc
const $ShoppingTaskDTO = _$ShoppingTaskDTOTearOff();

/// @nodoc
mixin _$ShoppingTaskDTO {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_id')
  int get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'box_id')
  int? get boxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'box')
  BoxDTO? get box => throw _privateConstructorUsedError;
  @JsonKey(name: 'item')
  ItemDTO? get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'shopping_list_id')
  int get shoppingListId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingTaskDTOCopyWith<ShoppingTaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingTaskDTOCopyWith<$Res> {
  factory $ShoppingTaskDTOCopyWith(
          ShoppingTaskDTO value, $Res Function(ShoppingTaskDTO) then) =
      _$ShoppingTaskDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'item_id') int itemId,
      @JsonKey(name: 'box_id') int? boxId,
      @JsonKey(name: 'box') BoxDTO? box,
      @JsonKey(name: 'item') ItemDTO? item,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'shopping_list_id') int shoppingListId,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'count') int? count});

  $BoxDTOCopyWith<$Res>? get box;
  $ItemDTOCopyWith<$Res>? get item;
}

/// @nodoc
class _$ShoppingTaskDTOCopyWithImpl<$Res>
    implements $ShoppingTaskDTOCopyWith<$Res> {
  _$ShoppingTaskDTOCopyWithImpl(this._value, this._then);

  final ShoppingTaskDTO _value;
  // ignore: unused_field
  final $Res Function(ShoppingTaskDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? itemId = freezed,
    Object? boxId = freezed,
    Object? box = freezed,
    Object? item = freezed,
    Object? completedAt = freezed,
    Object? shoppingListId = freezed,
    Object? isCompleted = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int?,
      box: box == freezed
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as BoxDTO?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDTO?,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shoppingListId: shoppingListId == freezed
          ? _value.shoppingListId
          : shoppingListId // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$ShoppingTaskDTOCopyWith<$Res>
    implements $ShoppingTaskDTOCopyWith<$Res> {
  factory _$ShoppingTaskDTOCopyWith(
          _ShoppingTaskDTO value, $Res Function(_ShoppingTaskDTO) then) =
      __$ShoppingTaskDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'item_id') int itemId,
      @JsonKey(name: 'box_id') int? boxId,
      @JsonKey(name: 'box') BoxDTO? box,
      @JsonKey(name: 'item') ItemDTO? item,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'shopping_list_id') int shoppingListId,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'count') int? count});

  @override
  $BoxDTOCopyWith<$Res>? get box;
  @override
  $ItemDTOCopyWith<$Res>? get item;
}

/// @nodoc
class __$ShoppingTaskDTOCopyWithImpl<$Res>
    extends _$ShoppingTaskDTOCopyWithImpl<$Res>
    implements _$ShoppingTaskDTOCopyWith<$Res> {
  __$ShoppingTaskDTOCopyWithImpl(
      _ShoppingTaskDTO _value, $Res Function(_ShoppingTaskDTO) _then)
      : super(_value, (v) => _then(v as _ShoppingTaskDTO));

  @override
  _ShoppingTaskDTO get _value => super._value as _ShoppingTaskDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? itemId = freezed,
    Object? boxId = freezed,
    Object? box = freezed,
    Object? item = freezed,
    Object? completedAt = freezed,
    Object? shoppingListId = freezed,
    Object? isCompleted = freezed,
    Object? count = freezed,
  }) {
    return _then(_ShoppingTaskDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      boxId: boxId == freezed
          ? _value.boxId
          : boxId // ignore: cast_nullable_to_non_nullable
              as int?,
      box: box == freezed
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as BoxDTO?,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDTO?,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shoppingListId: shoppingListId == freezed
          ? _value.shoppingListId
          : shoppingListId // ignore: cast_nullable_to_non_nullable
              as int,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingTaskDTO implements _ShoppingTaskDTO {
  _$_ShoppingTaskDTO(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'item_id') required this.itemId,
      @JsonKey(name: 'box_id') required this.boxId,
      @JsonKey(name: 'box') required this.box,
      @JsonKey(name: 'item') required this.item,
      @JsonKey(name: 'completed_at') required this.completedAt,
      @JsonKey(name: 'shopping_list_id') required this.shoppingListId,
      @JsonKey(name: 'is_completed') required this.isCompleted,
      @JsonKey(name: 'count') required this.count});

  factory _$_ShoppingTaskDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ShoppingTaskDTOFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'item_id')
  final int itemId;
  @override
  @JsonKey(name: 'box_id')
  final int? boxId;
  @override
  @JsonKey(name: 'box')
  final BoxDTO? box;
  @override
  @JsonKey(name: 'item')
  final ItemDTO? item;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
  @override
  @JsonKey(name: 'shopping_list_id')
  final int shoppingListId;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;
  @override
  @JsonKey(name: 'count')
  final int? count;

  @override
  String toString() {
    return 'ShoppingTaskDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, itemId: $itemId, boxId: $boxId, box: $box, item: $item, completedAt: $completedAt, shoppingListId: $shoppingListId, isCompleted: $isCompleted, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingTaskDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.boxId, boxId) ||
                const DeepCollectionEquality().equals(other.boxId, boxId)) &&
            (identical(other.box, box) ||
                const DeepCollectionEquality().equals(other.box, box)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.completedAt, completedAt) ||
                const DeepCollectionEquality()
                    .equals(other.completedAt, completedAt)) &&
            (identical(other.shoppingListId, shoppingListId) ||
                const DeepCollectionEquality()
                    .equals(other.shoppingListId, shoppingListId)) &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(boxId) ^
      const DeepCollectionEquality().hash(box) ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(completedAt) ^
      const DeepCollectionEquality().hash(shoppingListId) ^
      const DeepCollectionEquality().hash(isCompleted) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$ShoppingTaskDTOCopyWith<_ShoppingTaskDTO> get copyWith =>
      __$ShoppingTaskDTOCopyWithImpl<_ShoppingTaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShoppingTaskDTOToJson(this);
  }
}

abstract class _ShoppingTaskDTO implements ShoppingTaskDTO {
  factory _ShoppingTaskDTO(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'item_id') required int itemId,
      @JsonKey(name: 'box_id') required int? boxId,
      @JsonKey(name: 'box') required BoxDTO? box,
      @JsonKey(name: 'item') required ItemDTO? item,
      @JsonKey(name: 'completed_at') required DateTime? completedAt,
      @JsonKey(name: 'shopping_list_id') required int shoppingListId,
      @JsonKey(name: 'is_completed') required bool isCompleted,
      @JsonKey(name: 'count') required int? count}) = _$_ShoppingTaskDTO;

  factory _ShoppingTaskDTO.fromJson(Map<String, dynamic> json) =
      _$_ShoppingTaskDTO.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'item_id')
  int get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'box_id')
  int? get boxId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'box')
  BoxDTO? get box => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'item')
  ItemDTO? get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'shopping_list_id')
  int get shoppingListId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingTaskDTOCopyWith<_ShoppingTaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
