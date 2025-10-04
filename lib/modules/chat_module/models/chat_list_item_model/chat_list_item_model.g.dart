// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatListItemModelImpl _$$ChatListItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatListItemModelImpl(
      fcmToken: json['fcmToken'] as String,
      userName: json['userName'] as String,
      profilePic: json['profilePic'] as String,
      unseenCount: (json['unseenCount'] as num).toInt(),
      userId: json['userId'] as String,
      chatId: json['chatId'] as String,
      lastMessage: json['lastMessage'] == null
          ? null
          : DateTime.parse(json['lastMessage'] as String),
      type: json['type'] as String,
      groupType: json['groupType'] as String?,
    );

Map<String, dynamic> _$$ChatListItemModelImplToJson(
        _$ChatListItemModelImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'userName': instance.userName,
      'profilePic': instance.profilePic,
      'unseenCount': instance.unseenCount,
      'userId': instance.userId,
      'chatId': instance.chatId,
      'lastMessage': instance.lastMessage?.toIso8601String(),
      'type': instance.type,
      'groupType': instance.groupType,
    };
