// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserListItem _$UserListItemFromJson(Map<String, dynamic> json) {
  return _UserListItem.fromJson(json);
}

/// @nodoc
mixin _$UserListItem {
  String get fcmToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profilePic => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListItemCopyWith<UserListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListItemCopyWith<$Res> {
  factory $UserListItemCopyWith(
          UserListItem value, $Res Function(UserListItem) then) =
      _$UserListItemCopyWithImpl<$Res, UserListItem>;
  @useResult
  $Res call({String fcmToken, String name, String profilePic, String userId});
}

/// @nodoc
class _$UserListItemCopyWithImpl<$Res, $Val extends UserListItem>
    implements $UserListItemCopyWith<$Res> {
  _$UserListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? name = null,
    Object? profilePic = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserListItemImplCopyWith<$Res>
    implements $UserListItemCopyWith<$Res> {
  factory _$$UserListItemImplCopyWith(
          _$UserListItemImpl value, $Res Function(_$UserListItemImpl) then) =
      __$$UserListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fcmToken, String name, String profilePic, String userId});
}

/// @nodoc
class __$$UserListItemImplCopyWithImpl<$Res>
    extends _$UserListItemCopyWithImpl<$Res, _$UserListItemImpl>
    implements _$$UserListItemImplCopyWith<$Res> {
  __$$UserListItemImplCopyWithImpl(
      _$UserListItemImpl _value, $Res Function(_$UserListItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? name = null,
    Object? profilePic = null,
    Object? userId = null,
  }) {
    return _then(_$UserListItemImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListItemImpl implements _UserListItem {
  const _$UserListItemImpl(
      {required this.fcmToken,
      required this.name,
      required this.profilePic,
      required this.userId});

  factory _$UserListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListItemImplFromJson(json);

  @override
  final String fcmToken;
  @override
  final String name;
  @override
  final String profilePic;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserListItem(fcmToken: $fcmToken, name: $name, profilePic: $profilePic, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListItemImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fcmToken, name, profilePic, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListItemImplCopyWith<_$UserListItemImpl> get copyWith =>
      __$$UserListItemImplCopyWithImpl<_$UserListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListItemImplToJson(
      this,
    );
  }
}

abstract class _UserListItem implements UserListItem {
  const factory _UserListItem(
      {required final String fcmToken,
      required final String name,
      required final String profilePic,
      required final String userId}) = _$UserListItemImpl;

  factory _UserListItem.fromJson(Map<String, dynamic> json) =
      _$UserListItemImpl.fromJson;

  @override
  String get fcmToken;
  @override
  String get name;
  @override
  String get profilePic;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$UserListItemImplCopyWith<_$UserListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
