// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FriendRequestList _$FriendRequestListFromJson(Map<String, dynamic> json) {
  return _FriendRequestList.fromJson(json);
}

/// @nodoc
mixin _$FriendRequestList {
  String get fcmToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profilePic => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get frndReqstId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestListCopyWith<FriendRequestList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestListCopyWith<$Res> {
  factory $FriendRequestListCopyWith(
          FriendRequestList value, $Res Function(FriendRequestList) then) =
      _$FriendRequestListCopyWithImpl<$Res, FriendRequestList>;
  @useResult
  $Res call(
      {String fcmToken,
      String name,
      String profilePic,
      String userId,
      String userName,
      String? status,
      String? frndReqstId});
}

/// @nodoc
class _$FriendRequestListCopyWithImpl<$Res, $Val extends FriendRequestList>
    implements $FriendRequestListCopyWith<$Res> {
  _$FriendRequestListCopyWithImpl(this._value, this._then);

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
    Object? userName = null,
    Object? status = freezed,
    Object? frndReqstId = freezed,
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      frndReqstId: freezed == frndReqstId
          ? _value.frndReqstId
          : frndReqstId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FriendRequestListImplCopyWith<$Res>
    implements $FriendRequestListCopyWith<$Res> {
  factory _$$FriendRequestListImplCopyWith(_$FriendRequestListImpl value,
          $Res Function(_$FriendRequestListImpl) then) =
      __$$FriendRequestListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fcmToken,
      String name,
      String profilePic,
      String userId,
      String userName,
      String? status,
      String? frndReqstId});
}

/// @nodoc
class __$$FriendRequestListImplCopyWithImpl<$Res>
    extends _$FriendRequestListCopyWithImpl<$Res, _$FriendRequestListImpl>
    implements _$$FriendRequestListImplCopyWith<$Res> {
  __$$FriendRequestListImplCopyWithImpl(_$FriendRequestListImpl _value,
      $Res Function(_$FriendRequestListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? name = null,
    Object? profilePic = null,
    Object? userId = null,
    Object? userName = null,
    Object? status = freezed,
    Object? frndReqstId = freezed,
  }) {
    return _then(_$FriendRequestListImpl(
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
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      frndReqstId: freezed == frndReqstId
          ? _value.frndReqstId
          : frndReqstId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FriendRequestListImpl implements _FriendRequestList {
  const _$FriendRequestListImpl(
      {required this.fcmToken,
      required this.name,
      required this.profilePic,
      required this.userId,
      required this.userName,
      required this.status,
      required this.frndReqstId});

  factory _$FriendRequestListImpl.fromJson(Map<String, dynamic> json) =>
      _$$FriendRequestListImplFromJson(json);

  @override
  final String fcmToken;
  @override
  final String name;
  @override
  final String profilePic;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? status;
  @override
  final String? frndReqstId;

  @override
  String toString() {
    return 'FriendRequestList(fcmToken: $fcmToken, name: $name, profilePic: $profilePic, userId: $userId, userName: $userName, status: $status, frndReqstId: $frndReqstId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FriendRequestListImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.frndReqstId, frndReqstId) ||
                other.frndReqstId == frndReqstId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, name, profilePic,
      userId, userName, status, frndReqstId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FriendRequestListImplCopyWith<_$FriendRequestListImpl> get copyWith =>
      __$$FriendRequestListImplCopyWithImpl<_$FriendRequestListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FriendRequestListImplToJson(
      this,
    );
  }
}

abstract class _FriendRequestList implements FriendRequestList {
  const factory _FriendRequestList(
      {required final String fcmToken,
      required final String name,
      required final String profilePic,
      required final String userId,
      required final String userName,
      required final String? status,
      required final String? frndReqstId}) = _$FriendRequestListImpl;

  factory _FriendRequestList.fromJson(Map<String, dynamic> json) =
      _$FriendRequestListImpl.fromJson;

  @override
  String get fcmToken;
  @override
  String get name;
  @override
  String get profilePic;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get status;
  @override
  String? get frndReqstId;
  @override
  @JsonKey(ignore: true)
  _$$FriendRequestListImplCopyWith<_$FriendRequestListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
