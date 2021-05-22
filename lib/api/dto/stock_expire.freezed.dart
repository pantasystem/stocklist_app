// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stock_expire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StockExpireDTO _$StockExpireDTOFromJson(Map<String, dynamic> json) {
  return _StockExpireDTO.fromJson(json);
}

/// @nodoc
class _$StockExpireDTOTearOff {
  const _$StockExpireDTOTearOff();

  _StockExpireDTO call(
      {@JsonKey(name: 'expiration_date') required DateTime? expirationDate}) {
    return _StockExpireDTO(
      expirationDate: expirationDate,
    );
  }

  StockExpireDTO fromJson(Map<String, Object> json) {
    return StockExpireDTO.fromJson(json);
  }
}

/// @nodoc
const $StockExpireDTO = _$StockExpireDTOTearOff();

/// @nodoc
mixin _$StockExpireDTO {
  @JsonKey(name: 'expiration_date')
  DateTime? get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockExpireDTOCopyWith<StockExpireDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockExpireDTOCopyWith<$Res> {
  factory $StockExpireDTOCopyWith(
          StockExpireDTO value, $Res Function(StockExpireDTO) then) =
      _$StockExpireDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'expiration_date') DateTime? expirationDate});
}

/// @nodoc
class _$StockExpireDTOCopyWithImpl<$Res>
    implements $StockExpireDTOCopyWith<$Res> {
  _$StockExpireDTOCopyWithImpl(this._value, this._then);

  final StockExpireDTO _value;
  // ignore: unused_field
  final $Res Function(StockExpireDTO) _then;

  @override
  $Res call({
    Object? expirationDate = freezed,
  }) {
    return _then(_value.copyWith(
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$StockExpireDTOCopyWith<$Res>
    implements $StockExpireDTOCopyWith<$Res> {
  factory _$StockExpireDTOCopyWith(
          _StockExpireDTO value, $Res Function(_StockExpireDTO) then) =
      __$StockExpireDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'expiration_date') DateTime? expirationDate});
}

/// @nodoc
class __$StockExpireDTOCopyWithImpl<$Res>
    extends _$StockExpireDTOCopyWithImpl<$Res>
    implements _$StockExpireDTOCopyWith<$Res> {
  __$StockExpireDTOCopyWithImpl(
      _StockExpireDTO _value, $Res Function(_StockExpireDTO) _then)
      : super(_value, (v) => _then(v as _StockExpireDTO));

  @override
  _StockExpireDTO get _value => super._value as _StockExpireDTO;

  @override
  $Res call({
    Object? expirationDate = freezed,
  }) {
    return _then(_StockExpireDTO(
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StockExpireDTO implements _StockExpireDTO {
  _$_StockExpireDTO(
      {@JsonKey(name: 'expiration_date') required this.expirationDate});

  factory _$_StockExpireDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StockExpireDTOFromJson(json);

  @override
  @JsonKey(name: 'expiration_date')
  final DateTime? expirationDate;

  @override
  String toString() {
    return 'StockExpireDTO(expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StockExpireDTO &&
            (identical(other.expirationDate, expirationDate) ||
                const DeepCollectionEquality()
                    .equals(other.expirationDate, expirationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(expirationDate);

  @JsonKey(ignore: true)
  @override
  _$StockExpireDTOCopyWith<_StockExpireDTO> get copyWith =>
      __$StockExpireDTOCopyWithImpl<_StockExpireDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StockExpireDTOToJson(this);
  }
}

abstract class _StockExpireDTO implements StockExpireDTO {
  factory _StockExpireDTO(
      {@JsonKey(name: 'expiration_date')
          required DateTime? expirationDate}) = _$_StockExpireDTO;

  factory _StockExpireDTO.fromJson(Map<String, dynamic> json) =
      _$_StockExpireDTO.fromJson;

  @override
  @JsonKey(name: 'expiration_date')
  DateTime? get expirationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StockExpireDTOCopyWith<_StockExpireDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
