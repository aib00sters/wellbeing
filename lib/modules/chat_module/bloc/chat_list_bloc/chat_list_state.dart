part of 'chat_list_bloc.dart';

@freezed
class ChatListState with _$ChatListState {
  const factory ChatListState.error({required String errorMsg}) = _Error;
  const factory ChatListState.initial() = _Initial;
  const factory ChatListState.loading() = _Loading;
  const factory ChatListState.success(
      {required List<ChatListItemModel> chatList}) = _Success;
}
