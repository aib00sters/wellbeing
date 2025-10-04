part of 'send_message_bloc.dart';

@freezed
class SendMessageEvent with _$SendMessageEvent {
  const factory SendMessageEvent.sendMessage({
    required String receiverId,
    required String message,
    required String chatId,
    required String receiverToken,
    String? groupName,
  }) = _SendMessage;
  const factory SendMessageEvent.started() = _Started;
  const factory SendMessageEvent.uploadFile({
    required String receiverId,
    required String type,
    required String chatId,
    required String filePath,
    String? groupName,
  }) = _UploadFile;
}
