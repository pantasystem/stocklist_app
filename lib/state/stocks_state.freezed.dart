// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stocks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StocksStateTearOff {
  const _$StocksStateTearOff();

  _StocksState call({required List<Stock> stocks}) {
    return _StocksState(
      stocks: stocks,
    );
  }
}

/// @nodoc
const $StocksState = _$StocksStateTearOff();

/// @nodoc
mixin _$StocksState {
  List<Stock> get stocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StocksStateCopyWith<StocksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksStateCopyWith<$Res> {
  factory $StocksStateCopyWith(
          StocksState value, $Res Function(StocksState) then) =
      _$StocksStateCopyWithImpl<$Res>;
  $Res call({List<Stock> stocks});
}

/// @nodoc
class _$StocksStateCopyWithImpl<$Res> implements $StocksStateCopyWith<$Res> {
  _$StocksStateCopyWithImpl(this._value, this._then);

  final StocksState _value;
  // ignore: unused_field
  final $Res Function(StocksState) _then;

  @override
  $Res call({
    Object? stocks = freezed,
  }) {
    return _then(_value.copyWith(
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc
abstract class _$StocksStateCopyWith<$Res>
    implements $StocksStateCopyWith<$Res> {
  factory _$StocksStateCopyWith(
          _StocksState value, $Res Function(_StocksState) then) =
      __$StocksStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Stock> stocks});
}

/// @nodoc
class __$StocksStateCopyWithImpl<$Res> extends _$StocksStateCopyWithImpl<$Res>
    implements _$StocksStateCopyWith<$Res> {
  __$StocksStateCopyWithImpl(
      _StocksState _value, $Res Function(_StocksState) _then)
      : super(_value, (v) => _then(v as _StocksState));

  @override
  _StocksState get _value => super._value as _StocksState;

  @override
  $Res call({
    Object? stocks = freezed,
  }) {
    return _then(_StocksState(
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
    ));
  }
}

/// @nodoc

class _$_StocksState implements _StocksState {
  _$_StocksState({required this.stocks});

  @override
  final List<Stock> stocks;

  @override
  String toString() {
    return 'StocksState(stocks: $stocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StocksState &&
            (identical(other.stocks, stocks) ||
                const DeepCollectionEquality().equals(other.stocks, stocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stocks);

  @JsonKey(ignore: true)
  @override
  _$StocksStateCopyWith<_StocksState> get copyWith =>
      __$StocksStateCopyWithImpl<_StocksState>(this, _$identity);
}

abstract class _StocksState implements StocksState {
  factory _StocksState({required List<Stock> stocks}) = _$_StocksState;

  @override
  List<Stock> get stocks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StocksStateCopyWith<_StocksState> get copyWith =>
      throw _privateConstructorUsedError;
}
