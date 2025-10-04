part of 'message_list_bloc.dart';

@freezed
class MessageListEvent with _$MessageListEvent {
  const factory MessageListEvent.fetchMessages({
    required String chatId,
    required String groupId,
  }) = _FetchMessages;
  const factory MessageListEvent.started() = _Started;
}
