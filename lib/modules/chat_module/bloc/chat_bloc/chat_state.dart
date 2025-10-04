part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.error({required String errorMsg}) = _Error;
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.success(
      {required String chatId,
      required UserListItem recieverData,
      required String chatType,
      required String userId,
      required String username}) = _Success;
}
