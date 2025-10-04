// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      chatId: json['chatId'] as String,
      sentTime: json['sentTime'] as String,
      seenBy:
          (json['seenBy'] as List<dynamic>).map((e) => e as String).toList(),
      text: json['text'] as String,
      recipientId: json['recipientId'] as String,
      senderId: json['senderId'] as String,
      fileUrl: json['fileUrl'] as String,
      status: json['status'] as String,
      localPath: json['localPath'] as String,
      type: json['type'] as String,
      senderName: json['senderName'] as String?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'sentTime': instance.sentTime,
      'seenBy': instance.seenBy,
      'text': instance.text,
      'recipientId': instance.recipientId,
      'senderId': instance.senderId,
      'fileUrl': instance.fileUrl,
      'status': instance.status,
      'localPath': instance.localPath,
      'type': instance.type,
      'senderName': instance.senderName,
    };
