// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendRequestListImpl _$$FriendRequestListImplFromJson(
        Map<String, dynamic> json) =>
    _$FriendRequestListImpl(
      fcmToken: json['fcmToken'] as String,
      name: json['name'] as String,
      profilePic: json['profilePic'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      status: json['status'] as String?,
      frndReqstId: json['frndReqstId'] as String?,
    );

Map<String, dynamic> _$$FriendRequestListImplToJson(
        _$FriendRequestListImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'name': instance.name,
      'profilePic': instance.profilePic,
      'userId': instance.userId,
      'userName': instance.userName,
      'status': instance.status,
      'frndReqstId': instance.frndReqstId,
    };
