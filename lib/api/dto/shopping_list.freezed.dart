// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shopping_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingListDTO _$ShoppingListDTOFromJson(Map<String, dynamic> json) {
  return _ShoppingListDTO.fromJson(json);
}

/// @nodoc
class _$ShoppingListDTOTearOff {
  const _$ShoppingListDTOTearOff();

  _ShoppingListDTO call(
      {required int id,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String title,
      required int? userId,
      required int homeId,
      required UserDTO? user,
      required bool isAllCompleted,
      required List<ShoppingTaskDTO> tasks}) {
    return _ShoppingListDTO(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      title: title,
      userId: userId,
      homeId: homeId,
      user: user,
      isAllCompleted: isAllCompleted,
      tasks: tasks,
    );
  }

  ShoppingListDTO fromJson(Map<String, Object> json) {
    return ShoppingListDTO.fromJson(json);
  }
}

/// @nodoc
const $ShoppingListDTO = _$ShoppingListDTOTearOff();

/// @nodoc
mixin _$ShoppingListDTO {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int get homeId => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  bool get isAllCompleted => throw _privateConstructorUsedError;
  List<ShoppingTaskDTO> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingListDTOCopyWith<ShoppingListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListDTOCopyWith<$Res> {
  factory $ShoppingListDTOCopyWith(
          ShoppingListDTO value, $Res Function(ShoppingListDTO) then) =
      _$ShoppingListDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      String title,
      int? userId,
      int homeId,
      UserDTO? user,
      bool isAllCompleted,
      List<ShoppingTaskDTO> tasks});

  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$ShoppingListDTOCopyWithImpl<$Res>
    implements $ShoppingListDTOCopyWith<$Res> {
  _$ShoppingListDTOCopyWithImpl(this._value, this._then);

  final ShoppingListDTO _value;
  // ignore: unused_field
  final $Res Function(ShoppingListDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
    Object? userId = freezed,
    Object? homeId = freezed,
    Object? user = freezed,
    Object? isAllCompleted = freezed,
    Object? tasks = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      isAllCompleted: isAllCompleted == freezed
          ? _value.isAllCompleted
          : isAllCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<ShoppingTaskDTO>,
    ));
  }

  @override
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ShoppingListDTOCopyWith<$Res>
    implements $ShoppingListDTOCopyWith<$Res> {
  factory _$ShoppingListDTOCopyWith(
          _ShoppingListDTO value, $Res Function(_ShoppingListDTO) then) =
      __$ShoppingListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      String title,
      int? userId,
      int homeId,
      UserDTO? user,
      bool isAllCompleted,
      List<ShoppingTaskDTO> tasks});

  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$ShoppingListDTOCopyWithImpl<$Res>
    extends _$ShoppingListDTOCopyWithImpl<$Res>
    implements _$ShoppingListDTOCopyWith<$Res> {
  __$ShoppingListDTOCopyWithImpl(
      _ShoppingListDTO _value, $Res Function(_ShoppingListDTO) _then)
      : super(_value, (v) => _then(v as _ShoppingListDTO));

  @override
  _ShoppingListDTO get _value => super._value as _ShoppingListDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
    Object? userId = freezed,
    Object? homeId = freezed,
    Object? user = freezed,
    Object? isAllCompleted = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_ShoppingListDTO(
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      homeId: homeId == freezed
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
      isAllCompleted: isAllCompleted == freezed
          ? _value.isAllCompleted
          : isAllCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<ShoppingTaskDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingListDTO implements _ShoppingListDTO {
  _$_ShoppingListDTO(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.title,
      required this.userId,
      required this.homeId,
      required this.user,
      required this.isAllCompleted,
      required this.tasks});

  factory _$_ShoppingListDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ShoppingListDTOFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String title;
  @override
  final int? userId;
  @override
  final int homeId;
  @override
  final UserDTO? user;
  @override
  final bool isAllCompleted;
  @override
  final List<ShoppingTaskDTO> tasks;

  @override
  String toString() {
    return 'ShoppingListDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, userId: $userId, homeId: $homeId, user: $user, isAllCompleted: $isAllCompleted, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingListDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.homeId, homeId) ||
                const DeepCollectionEquality().equals(other.homeId, homeId)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isAllCompleted, isAllCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isAllCompleted, isAllCompleted)) &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(homeId) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isAllCompleted) ^
      const DeepCollectionEquality().hash(tasks);

  @JsonKey(ignore: true)
  @override
  _$ShoppingListDTOCopyWith<_ShoppingListDTO> get copyWith =>
      __$ShoppingListDTOCopyWithImpl<_ShoppingListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShoppingListDTOToJson(this);
  }
}

abstract class _ShoppingListDTO implements ShoppingListDTO {
  factory _ShoppingListDTO(
      {required int id,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String title,
      required int? userId,
      required int homeId,
      required UserDTO? user,
      required bool isAllCompleted,
      required List<ShoppingTaskDTO> tasks}) = _$_ShoppingListDTO;

  factory _ShoppingListDTO.fromJson(Map<String, dynamic> json) =
      _$_ShoppingListDTO.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int? get userId => throw _privateConstructorUsedError;
  @override
  int get homeId => throw _privateConstructorUsedError;
  @override
  UserDTO? get user => throw _privateConstructorUsedError;
  @override
  bool get isAllCompleted => throw _privateConstructorUsedError;
  @override
  List<ShoppingTaskDTO> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShoppingListDTOCopyWith<_ShoppingListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
