// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'boxes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoxesStateTearOff {
  const _$BoxesStateTearOff();

  _BoxesState call({required List<Box> boxes}) {
    return _BoxesState(
      boxes: boxes,
    );
  }
}

/// @nodoc
const $BoxesState = _$BoxesStateTearOff();

/// @nodoc
mixin _$BoxesState {
  List<Box> get boxes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoxesStateCopyWith<BoxesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxesStateCopyWith<$Res> {
  factory $BoxesStateCopyWith(
          BoxesState value, $Res Function(BoxesState) then) =
      _$BoxesStateCopyWithImpl<$Res>;
  $Res call({List<Box> boxes});
}

/// @nodoc
class _$BoxesStateCopyWithImpl<$Res> implements $BoxesStateCopyWith<$Res> {
  _$BoxesStateCopyWithImpl(this._value, this._then);

  final BoxesState _value;
  // ignore: unused_field
  final $Res Function(BoxesState) _then;

  @override
  $Res call({
    Object? boxes = freezed,
  }) {
    return _then(_value.copyWith(
      boxes: boxes == freezed
          ? _value.boxes
          : boxes // ignore: cast_nullable_to_non_nullable
              as List<Box>,
    ));
  }
}

/// @nodoc
abstract class _$BoxesStateCopyWith<$Res> implements $BoxesStateCopyWith<$Res> {
  factory _$BoxesStateCopyWith(
          _BoxesState value, $Res Function(_BoxesState) then) =
      __$BoxesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Box> boxes});
}

/// @nodoc
class __$BoxesStateCopyWithImpl<$Res> extends _$BoxesStateCopyWithImpl<$Res>
    implements _$BoxesStateCopyWith<$Res> {
  __$BoxesStateCopyWithImpl(
      _BoxesState _value, $Res Function(_BoxesState) _then)
      : super(_value, (v) => _then(v as _BoxesState));

  @override
  _BoxesState get _value => super._value as _BoxesState;

  @override
  $Res call({
    Object? boxes = freezed,
  }) {
    return _then(_BoxesState(
      boxes: boxes == freezed
          ? _value.boxes
          : boxes // ignore: cast_nullable_to_non_nullable
              as List<Box>,
    ));
  }
}

/// @nodoc

class _$_BoxesState extends _BoxesState {
  _$_BoxesState({required this.boxes}) : super._();

  @override
  final List<Box> boxes;

  @override
  String toString() {
    return 'BoxesState(boxes: $boxes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoxesState &&
            (identical(other.boxes, boxes) ||
                const DeepCollectionEquality().equals(other.boxes, boxes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(boxes);

  @JsonKey(ignore: true)
  @override
  _$BoxesStateCopyWith<_BoxesState> get copyWith =>
      __$BoxesStateCopyWithImpl<_BoxesState>(this, _$identity);
}

abstract class _BoxesState extends BoxesState {
  factory _BoxesState({required List<Box> boxes}) = _$_BoxesState;
  _BoxesState._() : super._();

  @override
  List<Box> get boxes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoxesStateCopyWith<_BoxesState> get copyWith =>
      throw _privateConstructorUsedError;
}
