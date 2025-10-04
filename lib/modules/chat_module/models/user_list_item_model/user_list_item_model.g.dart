// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserListItemImpl _$$UserListItemImplFromJson(Map<String, dynamic> json) =>
    _$UserListItemImpl(
      fcmToken: json['fcmToken'] as String,
      name: json['name'] as String,
      profilePic: json['profilePic'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$UserListItemImplToJson(_$UserListItemImpl instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'name': instance.name,
      'profilePic': instance.profilePic,
      'userId': instance.userId,
    };
