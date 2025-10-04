part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.initChat({
    required String receiverId,
    required String chatType,
    required String chatId,
  }) = _InitChat;
  const factory ChatEvent.started() = _Started;
}
