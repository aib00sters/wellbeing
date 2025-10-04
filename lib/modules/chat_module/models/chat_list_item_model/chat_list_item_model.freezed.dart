// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_list_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatListItemModel _$ChatListItemModelFromJson(Map<String, dynamic> json) {
  return _ChatListItemModel.fromJson(json);
}

/// @nodoc
mixin _$ChatListItemModel {
  String get fcmToken => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get profilePic => throw _privateConstructorUsedError;
  int get unseenCount => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  DateTime? get lastMessage => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get groupType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatListItemModelCopyWith<ChatListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListItemModelCopyWith<$Res> {
  factory $ChatListItemModelCopyWith(
          ChatListItemModel value, $Res Function(ChatListItemModel) then) =
      _$ChatListItemModelCopyWithImpl<$Res, ChatListItemModel>;
  @useResult
  $Res call(
      {String fcmToken,
      String userName,
      String profilePic,
      int unseenCount,
      String userId,
      String chatId,
      DateTime? lastMessage,
      String type,
      String? groupType});
}

/// @nodoc
class _$ChatListItemModelCopyWithImpl<$Res, $Val extends ChatListItemModel>
    implements $ChatListItemModelCopyWith<$Res> {
  _$ChatListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? userName = null,
    Object? profilePic = null,
    Object? unseenCount = null,
    Object? userId = null,
    Object? chatId = null,
    Object? lastMessage = freezed,
    Object? type = null,
    Object? groupType = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      unseenCount: null == unseenCount
          ? _value.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      groupType: freezed == groupType
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatListItemModelImplCopyWith<$Res>
    implements $ChatListItemModelCopyWith<$Res> {
  factory _$$ChatListItemModelImplCopyWith(_$ChatListItemModelImpl value,
          $Res Function(_$ChatListItemModelImpl) then) =
      __$$ChatListItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fcmToken,
      String userName,
      String profilePic,
      int unseenCount,
      String userId,
      String chatId,
      DateTime? lastMessage,
      String type,
      String? groupType});
}

/// @nodoc
class __$$ChatListItemModelImplCopyWithImpl<$Res>
    extends _$ChatListItemModelCopyWithImpl<$Res, _$ChatListItemModelImpl>
    implements _$$ChatListItemModelImplCopyWith<$Res> {
  __$$ChatListItemModelImplCopyWithImpl(_$ChatListItemModelImpl _value,
      $Res Function(_$ChatListItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = null,
    Object? userName = null,
    Object? profilePic = null,
    Object? unseenCount = null,
    Object? userId = null,
    Object? chatId = null,
    Object? lastMessage = freezed,
    Object? type = null,
    Object? groupType = freezed,
  }) {
    return _then(_$ChatListItemModelImpl(
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: null == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String,
      unseenCount: null == unseenCount
          ? _value.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      groupType: freezed == groupType
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatListItemModelImpl implements _ChatListItemModel {
  const _$ChatListItemModelImpl(
      {required this.fcmToken,
      required this.userName,
      required this.profilePic,
      required this.unseenCount,
      required this.userId,
      required this.chatId,
      required this.lastMessage,
      required this.type,
      required this.groupType});

  factory _$ChatListItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatListItemModelImplFromJson(json);

  @override
  final String fcmToken;
  @override
  final String userName;
  @override
  final String profilePic;
  @override
  final int unseenCount;
  @override
  final String userId;
  @override
  final String chatId;
  @override
  final DateTime? lastMessage;
  @override
  final String type;
  @override
  final String? groupType;

  @override
  String toString() {
    return 'ChatListItemModel(fcmToken: $fcmToken, userName: $userName, profilePic: $profilePic, unseenCount: $unseenCount, userId: $userId, chatId: $chatId, lastMessage: $lastMessage, type: $type, groupType: $groupType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListItemModelImpl &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.unseenCount, unseenCount) ||
                other.unseenCount == unseenCount) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.groupType, groupType) ||
                other.groupType == groupType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, userName, profilePic,
      unseenCount, userId, chatId, lastMessage, type, groupType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListItemModelImplCopyWith<_$ChatListItemModelImpl> get copyWith =>
      __$$ChatListItemModelImplCopyWithImpl<_$ChatListItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatListItemModelImplToJson(
      this,
    );
  }
}

abstract class _ChatListItemModel implements ChatListItemModel {
  const factory _ChatListItemModel(
      {required final String fcmToken,
      required final String userName,
      required final String profilePic,
      required final int unseenCount,
      required final String userId,
      required final String chatId,
      required final DateTime? lastMessage,
      required final String type,
      required final String? groupType}) = _$ChatListItemModelImpl;

  factory _ChatListItemModel.fromJson(Map<String, dynamic> json) =
      _$ChatListItemModelImpl.fromJson;

  @override
  String get fcmToken;
  @override
  String get userName;
  @override
  String get profilePic;
  @override
  int get unseenCount;
  @override
  String get userId;
  @override
  String get chatId;
  @override
  DateTime? get lastMessage;
  @override
  String get type;
  @override
  String? get groupType;
  @override
  @JsonKey(ignore: true)
  _$$ChatListItemModelImplCopyWith<_$ChatListItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
