import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String chatId,
    required String sentTime,
    required List<String> seenBy,
    required String text,
    required String recipientId,
    required String senderId,
    required String fileUrl,
    required String status,
    required String localPath,
    required String type,
    String? senderName,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
