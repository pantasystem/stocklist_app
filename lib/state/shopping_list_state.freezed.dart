// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShoppingListsStateTearOff {
  const _$ShoppingListsStateTearOff();

  _ShoppingListsState call({required List<ShoppingList> shoppingLists}) {
    return _ShoppingListsState(
      shoppingLists: shoppingLists,
    );
  }
}

/// @nodoc
const $ShoppingListsState = _$ShoppingListsStateTearOff();

/// @nodoc
mixin _$ShoppingListsState {
  List<ShoppingList> get shoppingLists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingListsStateCopyWith<ShoppingListsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListsStateCopyWith<$Res> {
  factory $ShoppingListsStateCopyWith(
          ShoppingListsState value, $Res Function(ShoppingListsState) then) =
      _$ShoppingListsStateCopyWithImpl<$Res>;
  $Res call({List<ShoppingList> shoppingLists});
}

/// @nodoc
class _$ShoppingListsStateCopyWithImpl<$Res>
    implements $ShoppingListsStateCopyWith<$Res> {
  _$ShoppingListsStateCopyWithImpl(this._value, this._then);

  final ShoppingListsState _value;
  // ignore: unused_field
  final $Res Function(ShoppingListsState) _then;

  @override
  $Res call({
    Object? shoppingLists = freezed,
  }) {
    return _then(_value.copyWith(
      shoppingLists: shoppingLists == freezed
          ? _value.shoppingLists
          : shoppingLists // ignore: cast_nullable_to_non_nullable
              as List<ShoppingList>,
    ));
  }
}

/// @nodoc
abstract class _$ShoppingListsStateCopyWith<$Res>
    implements $ShoppingListsStateCopyWith<$Res> {
  factory _$ShoppingListsStateCopyWith(
          _ShoppingListsState value, $Res Function(_ShoppingListsState) then) =
      __$ShoppingListsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ShoppingList> shoppingLists});
}

/// @nodoc
class __$ShoppingListsStateCopyWithImpl<$Res>
    extends _$ShoppingListsStateCopyWithImpl<$Res>
    implements _$ShoppingListsStateCopyWith<$Res> {
  __$ShoppingListsStateCopyWithImpl(
      _ShoppingListsState _value, $Res Function(_ShoppingListsState) _then)
      : super(_value, (v) => _then(v as _ShoppingListsState));

  @override
  _ShoppingListsState get _value => super._value as _ShoppingListsState;

  @override
  $Res call({
    Object? shoppingLists = freezed,
  }) {
    return _then(_ShoppingListsState(
      shoppingLists: shoppingLists == freezed
          ? _value.shoppingLists
          : shoppingLists // ignore: cast_nullable_to_non_nullable
              as List<ShoppingList>,
    ));
  }
}

/// @nodoc

class _$_ShoppingListsState extends _ShoppingListsState {
  _$_ShoppingListsState({required this.shoppingLists}) : super._();

  @override
  final List<ShoppingList> shoppingLists;

  @override
  String toString() {
    return 'ShoppingListsState(shoppingLists: $shoppingLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingListsState &&
            (identical(other.shoppingLists, shoppingLists) ||
                const DeepCollectionEquality()
                    .equals(other.shoppingLists, shoppingLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shoppingLists);

  @JsonKey(ignore: true)
  @override
  _$ShoppingListsStateCopyWith<_ShoppingListsState> get copyWith =>
      __$ShoppingListsStateCopyWithImpl<_ShoppingListsState>(this, _$identity);
}

abstract class _ShoppingListsState extends ShoppingListsState {
  factory _ShoppingListsState({required List<ShoppingList> shoppingLists}) =
      _$_ShoppingListsState;
  _ShoppingListsState._() : super._();

  @override
  List<ShoppingList> get shoppingLists => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingListsStateCopyWith<_ShoppingListsState> get copyWith =>
      throw _privateConstructorUsedError;
}
