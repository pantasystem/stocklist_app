// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Invitation _$InvitationFromJson(Map<String, dynamic> json) {
  return _Invitation.fromJson(json);
}

/// @nodoc
class _$InvitationTearOff {
  const _$InvitationTearOff();

  _Invitation call(
      {@JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'home_id') required int homeId,
      @JsonKey(name: 'user_id') required int userId,
      @JsonKey(name: 'accepted_at') required DateTime? acceptedAt}) {
    return _Invitation(
      createdAt: createdAt,
      homeId: homeId,
      userId: userId,
      acceptedAt: acceptedAt,
    );
  }

  Invitation fromJson(Map<String, Object> json) {
    return Invitation.fromJson(json);
  }
}

/// @nodoc
const $Invitation = _$InvitationTearOff();

/// @nodoc
mixin _$Invitation {
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_id')
  int get homeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'accepted_at')
  DateTime? get acceptedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvitationCopyWith<Invitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvitationCopyWith<$Res> {
  factory $InvitationCopyWith(
          Invitation value, $Res Function(Invitation) then) =
      _$InvitationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'home_id') int homeId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'accepted_at') DateTime? acceptedAt});
}

/// @nodoc
class _$InvitationCopyWithImpl<$Res> implements $InvitationCopyWith<$Res> {
  _$InvitationCopyWithImpl(this._value, this._then);

  final Invitation _value;
  // ignore: unused_field
  final $Res Function(Invitation) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? homeId = freezed,
    Object? userId = freezed,
    Object? acceptedAt = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedAt: acceptedAt == freezed
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$InvitationCopyWith<$Res> implements $InvitationCopyWith<$Res> {
  factory _$InvitationCopyWith(
          _Invitation value, $Res Function(_Invitation) then) =
      __$InvitationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'home_id') int homeId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'accepted_at') DateTime? acceptedAt});
}

/// @nodoc
class __$InvitationCopyWithImpl<$Res> extends _$InvitationCopyWithImpl<$Res>
    implements _$InvitationCopyWith<$Res> {
  __$InvitationCopyWithImpl(
      _Invitation _value, $Res Function(_Invitation) _then)
      : super(_value, (v) => _then(v as _Invitation));

  @override
  _Invitation get _value => super._value as _Invitation;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? homeId = freezed,
    Object? userId = freezed,
    Object? acceptedAt = freezed,
  }) {
    return _then(_Invitation(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      acceptedAt: acceptedAt == freezed
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Invitation implements _Invitation {
  _$_Invitation(
      {@JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'home_id') required this.homeId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'accepted_at') required this.acceptedAt});

  factory _$_Invitation.fromJson(Map<String, dynamic> json) =>
      _$_$_InvitationFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'home_id')
  final int homeId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'accepted_at')
  final DateTime? acceptedAt;

  @override
  String toString() {
    return 'Invitation(createdAt: $createdAt, homeId: $homeId, userId: $userId, acceptedAt: $acceptedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Invitation &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.homeId, homeId) ||
                const DeepCollectionEquality().equals(other.homeId, homeId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.acceptedAt, acceptedAt) ||
                const DeepCollectionEquality()
                    .equals(other.acceptedAt, acceptedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(homeId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(acceptedAt);

  @JsonKey(ignore: true)
  @override
  _$InvitationCopyWith<_Invitation> get copyWith =>
      __$InvitationCopyWithImpl<_Invitation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InvitationToJson(this);
  }
}

abstract class _Invitation implements Invitation {
  factory _Invitation(
          {@JsonKey(name: 'created_at') required DateTime createdAt,
          @JsonKey(name: 'home_id') required int homeId,
          @JsonKey(name: 'user_id') required int userId,
          @JsonKey(name: 'accepted_at') required DateTime? acceptedAt}) =
      _$_Invitation;

  factory _Invitation.fromJson(Map<String, dynamic> json) =
      _$_Invitation.fromJson;

  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'home_id')
  int get homeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'accepted_at')
  DateTime? get acceptedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvitationCopyWith<_Invitation> get copyWith =>
      throw _privateConstructorUsedError;
}
