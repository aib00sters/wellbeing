part of 'message_list_bloc.dart';

@freezed
class MessageListState with _$MessageListState {
  const factory MessageListState.error({required String errorMsg}) = _Error;
  const factory MessageListState.initial() = _Initial;
  const factory MessageListState.loading() = _Loading;
  const factory MessageListState.success({
    required List<MessageModel> messages,
    required String userId,
    required String groupId,
  }) = _Success;
}
