// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'items_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemsStateTearOff {
  const _$ItemsStateTearOff();

  _ItemsState call({required List<Item> items}) {
    return _ItemsState(
      items: items,
    );
  }
}

/// @nodoc
const $ItemsState = _$ItemsStateTearOff();

/// @nodoc
mixin _$ItemsState {
  List<Item> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsStateCopyWith<ItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsStateCopyWith<$Res> {
  factory $ItemsStateCopyWith(
          ItemsState value, $Res Function(ItemsState) then) =
      _$ItemsStateCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

/// @nodoc
class _$ItemsStateCopyWithImpl<$Res> implements $ItemsStateCopyWith<$Res> {
  _$ItemsStateCopyWithImpl(this._value, this._then);

  final ItemsState _value;
  // ignore: unused_field
  final $Res Function(ItemsState) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
abstract class _$ItemsStateCopyWith<$Res> implements $ItemsStateCopyWith<$Res> {
  factory _$ItemsStateCopyWith(
          _ItemsState value, $Res Function(_ItemsState) then) =
      __$ItemsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Item> items});
}

/// @nodoc
class __$ItemsStateCopyWithImpl<$Res> extends _$ItemsStateCopyWithImpl<$Res>
    implements _$ItemsStateCopyWith<$Res> {
  __$ItemsStateCopyWithImpl(
      _ItemsState _value, $Res Function(_ItemsState) _then)
      : super(_value, (v) => _then(v as _ItemsState));

  @override
  _ItemsState get _value => super._value as _ItemsState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_ItemsState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$_ItemsState extends _ItemsState {
  _$_ItemsState({required this.items}) : super._();

  @override
  final List<Item> items;

  @override
  String toString() {
    return 'ItemsState(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$ItemsStateCopyWith<_ItemsState> get copyWith =>
      __$ItemsStateCopyWithImpl<_ItemsState>(this, _$identity);
}

abstract class _ItemsState extends ItemsState {
  factory _ItemsState({required List<Item> items}) = _$_ItemsState;
  _ItemsState._() : super._();

  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemsStateCopyWith<_ItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}
